//  This file was automatically generated and should not be edited.

import Apollo

public final class BookQuery: GraphQLQuery {
  public static let operationString =
    "query Book($isbn: String) {\n  Book(isbn: $isbn) {\n    __typename\n    isbn\n    authors {\n      __typename\n      id\n      name\n    }\n  }\n}"

  public var isbn: String?

  public init(isbn: String? = nil) {
    self.isbn = isbn
  }

  public var variables: GraphQLMap? {
    return ["isbn": isbn]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("Book", arguments: ["isbn": GraphQLVariable("isbn")], type: .object(Book.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(book: Book? = nil) {
      self.init(snapshot: ["__typename": "Query", "Book": book.flatMap { $0.snapshot }])
    }

    public var book: Book? {
      get {
        return (snapshot["Book"] as? Snapshot).flatMap { Book(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "Book")
      }
    }

    public struct Book: GraphQLSelectionSet {
      public static let possibleTypes = ["Book"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("isbn", type: .nonNull(.scalar(String.self))),
        GraphQLField("authors", type: .list(.nonNull(.object(Author.selections)))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(isbn: String, authors: [Author]? = nil) {
        self.init(snapshot: ["__typename": "Book", "isbn": isbn, "authors": authors.flatMap { $0.map { $0.snapshot } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var isbn: String {
        get {
          return snapshot["isbn"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "isbn")
        }
      }

      public var authors: [Author]? {
        get {
          return (snapshot["authors"] as? [Snapshot]).flatMap { $0.map { Author(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "authors")
        }
      }

      public struct Author: GraphQLSelectionSet {
        public static let possibleTypes = ["Author"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String) {
          self.init(snapshot: ["__typename": "Author", "id": id, "name": name])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}

public final class UpdateAuthorMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateAuthor($name: String) {\n  updateAuthor(id: \"cjfl7oz4fcmmy01170cmlwpi5\", name: $name) {\n    __typename\n    id\n    name\n  }\n}"

  public var name: String?

  public init(name: String? = nil) {
    self.name = name
  }

  public var variables: GraphQLMap? {
    return ["name": name]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateAuthor", arguments: ["id": "cjfl7oz4fcmmy01170cmlwpi5", "name": GraphQLVariable("name")], type: .object(UpdateAuthor.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateAuthor: UpdateAuthor? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateAuthor": updateAuthor.flatMap { $0.snapshot }])
    }

    public var updateAuthor: UpdateAuthor? {
      get {
        return (snapshot["updateAuthor"] as? Snapshot).flatMap { UpdateAuthor(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateAuthor")
      }
    }

    public struct UpdateAuthor: GraphQLSelectionSet {
      public static let possibleTypes = ["Author"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String) {
        self.init(snapshot: ["__typename": "Author", "id": id, "name": name])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }
    }
  }
}