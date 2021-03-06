FHIR Swift Classes
==================

These are [Swift](https://developer.apple.com/swift/) classes representing data models of [🔥 FHIR](http://www.hl7.org/fhir) resource profiles, compatible with **iOS 7** and **OS X 10.9** and later.
Building Swift frameworks requires Xcode 6 or later, using frameworks on iOS requires **iOS 8**.

The `master` branch is currently on the _May 2015 DSTU 2_ ballot version.  
The `develop` branch is work in progress for _DSTU 2_.

For specific FHIR and Swift versions not on the bleeding edge, see [releases](https://github.com/smart-on-fhir/Swift-FHIR/releases).
This work is [Apache licensed](LICENSE.txt).


SMART on FHIR
-------------

The [Swift-SMART](https://github.com/smart-on-fhir/Swift-SMART) framework utilizes these classes.
It also adds an implementation of the _FHIRServer_ protocol to make for a complete FHIR client framework.

- [Programming Guide](https://github.com/smart-on-fhir/Swift-SMART/wiki) with code examples
- [Technical Documentation](http://docs.smarthealthit.org/Swift-SMART/) of classes, properties and methods
- [Medication List](https://github.com/smart-on-fhir/SoF-MedList) sample app


Progress
--------

Here's a rough list of what still needs to be done.

```
[X] Reference resolver: resolve contained resources
[X] Reference resolver: resolve relative resources
[ ] Reference resolver: resolve absolute resources
[?] Serialization validator
[ ] Handle resource versions nicely
[ ] Create a default behavior when a modifierExtension is detected
[ ] Search: report search parameters that the server ignored
[?] Use non-optional properties and implement failable initializers (see
    @smart-on-fhir/fhir-parser:feature/swift-failable-init)
```

Working, at least to some extent:

- Classes generated for FHIR's base resources
    + Use Swift native types whenever possible
    + Use custom Date/Time/DateTime/Instant structs
- Use a FHIR server protocol for REST interactions with a server
- Deserialize from JSON
- Serialize to JSON
- Resolve contained resources
- Construct searches with NoSQL-like statements (cf. [fhir.js](https://github.com/FHIR/fhir.js))
- Perform operations
- Use example resources for auto-created class unit tests
    + Tests deserialization from file
    + Tests serialization from deserialized instances


Naming Convention
-----------------

Standard Swift naming conventions apply.
Tabs are used for indentation and spaces for alignment – the best of both worlds.
Classes representing FHIR profiles do not have a prefix.
Custom classes and protocols start with `FHIR` to not make them clash with profile classes and make them easily distinguishable.


FHIR Profile Data Models
------------------------

Classes are generated from FHIR profiles with our [Python FHIR parser](https://github.com/smart-on-fhir/fhir-parser).

### Verbousness

Swift is **statically typed** and introspection is _very_ limited at the time.
Therefore the generator needs to be a bit more verbose and create class-level serializers/deserializers, rather than looking at class properties at runtime and figure out how to serialize/deserialize.

### Cardinality

Some data models have properties with a cardinality of a minimum of 1.
While these can be enforced to never be nil in Swift by **not** making them _Optionals_, they are still optional to enable uniform initializers that only take a JSON dictionary.
For classes representing models with non-optional properties, a convenience initializer is supplied to reflect the need to set those properties without enforcing it.

### Contained Resources

FHIR makes use of [contained resources](http://hl7.org/implement/standards/fhir/references.html#contained).
An extension on the `Reference` class is included that adds method to handle reference resolving.
To resolve resource references, call `resolved(ModelClass)` on a reference property, which will return an instance of the referenced type if resolved successfully.

### Search

The client supports the NoSQL-like approach proposed and used by [fhir.js](https://github.com/FHIR/fhir.js#search).

#### Compartments

Search can be restricted to [compartments](http://hl7.org/fhir/extras.html#compartment), these however are not yet supported in the SMART server nor in these classes.

```
[ ] Patient/23/procedure?date=>2010-01-01&date=<2011-12-31
```

#### Referenced (not yet implemented)

If search is restricted to a reference property, this applies:

- If the search token is merely an id, i.e. it does **not** contain a forward slash, a type restricted search is constructed based on which instance method is called:
    `GET {base-url}/Thing?referenced:InstanceType={id}`
- If the search token does contain a forward slash it is assumed to be an absolute reference and no `:InstanceType` will be appended:  
    `GET {base-url}/Thing?referenced={uri}`

