// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
  /// Latest Movie
  internal static let latestMovie = L10n.tr("Localizable", "latest_movie")
  /// Latest TV Show
  internal static let latestTvShow = L10n.tr("Localizable", "latest_tv_show")
  /// Popular Movie
  internal static let popularMovie = L10n.tr("Localizable", "popular_movie")
  /// Popular People
  internal static let popularPeople = L10n.tr("Localizable", "popular_people")
  /// Popular TV Show
  internal static let popularTvShow = L10n.tr("Localizable", "popular_tv_show")
  /// See all >
  internal static let seeAll = L10n.tr("Localizable", "see_all")
  /// star
  internal static let star = L10n.tr("Localizable", "star")
  /// star.fill
  internal static let starFill = L10n.tr("Localizable", "star_fill")
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: nil, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
