import { useParams } from "next/navigation"
import { useEffect, useState } from "react"

type TranslationKey = string
type Translations = Record<string, any>

export function useTranslations() {
  const params = useParams()
  const [translations, setTranslations] = useState<Translations>({})
  const [isLoading, setIsLoading] = useState(true)

  // Determine locale from URL or default to Spanish
  const locale = params?.countryCode === 'us' ? 'en' : 'es'

  useEffect(() => {
    async function loadTranslations() {
      try {
        const response = await fetch(`/locales/${locale}/common.json`)
        const data = await response.json()
        setTranslations(data)
      } catch (error) {
        console.warn(`Failed to load translations for ${locale}, falling back to Spanish`)
        try {
          const response = await fetch('/locales/es/common.json')
          const data = await response.json()
          setTranslations(data)
        } catch (fallbackError) {
          console.error('Failed to load fallback translations:', fallbackError)
        }
      } finally {
        setIsLoading(false)
      }
    }

    loadTranslations()
  }, [locale])

  const t = (key: TranslationKey, fallback?: string): string => {
    const keys = key.split('.')
    let value = translations

    for (const k of keys) {
      value = value?.[k]
      if (value === undefined) break
    }

    if (typeof value === 'string') {
      return value
    }

    return fallback || key
  }

  return { t, locale, isLoading }
}