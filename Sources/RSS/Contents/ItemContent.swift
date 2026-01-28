import SGML

/// A marker protocol for elements that are valid children of an RSS `<item>` element.
///
/// Types conforming to `ItemContent` may appear inside an RSS `<item>`,
/// representing the content and metadata of a single feed entry.
///
/// This protocol does not add any requirements beyond `Element`;
/// it exists solely to provide semantic grouping and type safety.
public protocol ItemContent: Element {}
