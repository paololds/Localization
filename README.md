# Localization

Plural support for localised string with Localizable.stringsdict on iOS

Every language has its own rules for plural words, handle all cases with switches and if leads to unmaintainable code. For example, the number of variations of a word can go from 3 (English), up to 5 (Arabic). http://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html

Apple has introduced the .stringsdict files from iOS 7 with which you can specify which variation of the word to use based on the number of elements (zero, one, two, few, many, others).
https://developer.apple.com/library/content/documentation/MacOSX/Conceptual/BPInternational/StringsdictFileFormat/StringsdictFileFormat.html

## Preview

![](https://raw.githubusercontent.com/paololds/Localization/master/Localization.gif)

## License

__MIT License__
