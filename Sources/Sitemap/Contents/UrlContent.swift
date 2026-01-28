import SGML

/// A marker protocol for elements that are valid children of a `<url>` element.
///
/// Types conforming to `UrlContent` may appear inside a sitemap `<url>`.
/// (such as `Loc`, `LastMod`, `ChangeFreq`, and `Priority`).
///
/// This protocol does not add any requirements beyond `Element`;.
/// it is used purely for semantic grouping and type safety.
public protocol UrlContent: Element {}
