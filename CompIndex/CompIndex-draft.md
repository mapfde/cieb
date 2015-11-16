COMPETENCY INDEX

    TC: Fundamentals of Resource Description Framework 
        TP: Identity in RDF 
        TP: RDF data model 
            CO: Knows the subject-predicate-object component structure of a triple 
            CO: Understands the difference between literals and non-literals
            CO: Understands that any URI or literal denotes some "thing" in the world 
               whether real, imagined, or conceptual; and, all things are called "resources"
            CO: Understands that "resources" may be divided into groups called classes and 
               the members of a class are known as instances of the class (rdf:type)
            CO: Understands the use of datatypes and language tags with literals
            CO: Understands blank nodes and their appropriate use
            CO: Formulates QNames as a shorthand mechanism in writing prefixes for long URIs 
                BM: Uses prefixes for URIs in RDF specifications and data
            CO: Understands the concept of the named graph
        TP: Related data models
        TP: RDF serialization
            CO: Understands that RDF serializations and graphical representations 
               are just multiple alternative ways to write down, or "encode", a set 
               of triples, i.e., the "RDF graph"

    TC: Fundamentals of Linked Data
        TP: Web technology
        TP: Linked data principles
        TP: Linked Data architectures and services
        TP: Linked Data policies and best practices
        TP: Non-RDF Linked Data

    TC: RDF vocabularies
        TP: Finding RDF vocabularies
            CO: Retrieves and accesses RDF data from the "open Web"
        TP: Maintaining RDF vocabularies
        TP: Versioning RDF vocabularies
        TP: Publishing RDF vocabularies
        TP: Mapping RDF vocabularies
        TP: RDF application profiles

    TC: Creating and transforming RDF Data
        TP: Managing identifiers (URIs)
        TP: Creating RDF data
            CO: Structures data using blank nodes where appropriate    
        TP: Versioning RDF data
        TP: RDF data provenance
        TP: Cleaning and reconciling RDF data
        TP: Mapping and enriching RDF data

    TC: Interacting with RDF Data
        TP: Finding RDF Data
            CO: Retrieves and accesses RDF data from the "open Web"
            CO: Uses relevant resources to discover existing Linked Data datasets
            CO: Monitors and updates lists which report the status of SPARQL endpoints
            CO: Uses available vocabularies for dataset description to support their
                discovery
            CO: Registers datasets with relevant services for discovery        
        TP: Programming RDF Data
        TP: Querying RDF Data
            CO: Understands the "basic graph pattern" (BGP) of a SPARQL query as a 
                set of triple patterns.
            CO: Understands that the most basic SPARQL query matches the triples of 
                an RDF graph against a triple pattern consisting of fixed and variable 
                values
            CO: Understands the role of punctuation in a SPARQL query
                BM: Uses angle brackets for delimiting URIs
                BM: Uses question marks for indicating variables
            CO: Formulates advanced queries on data containing blank nodes
            CO: Uses PREFIX for URIs in SPARQL queries
            CO: Demonstrates a working knowledge of the forms and uses of 
                SPARQL result sets (SELECT, CONSTRUCT, DESCRIBE, and ASK)
                BM: Uses the SELECT clause to identify the variables to appear 
                    in a table of query results
                BM: Uses the WHERE clause provide the graph pattern to match
                    against the graph data
                BM: Uses variables in SELECT and WHERE clauses to yield a table
                    of results
                BM: Uses ASK for a simple True/False result in testing whether
                    a query pattern has a solution
                BM: Uses DESCRIBE to extract a single graph containing RDF data
                    about resources
                BM: Uses CONSTRUCT to extract and transform results into a single
                    RDF graph specified by a graph template
            CO: Understands how to combine and filter graph patterns using operators such 
                as UNION, OPTIONAL, FILTER, and MINUS
                BM: Uses UNION to formulate queries with multiple possible graph patterns
                BM: Uses OPTIONAL to formulate queries to return the values of
                    optional variables when available
                BM: Uses FILTER to formulates queries that eliminate solutions from a
                    result set
                BM: Uses NOT EXISTS to limit whether a given graph pattern exists in
                    the data
                BM: Uses MINUS to remove matches from a result based on the
                    evaluation of two patterns
                BM: Uses NOT IN to restrict a variable to not being in a given set 
                    of values
            CO: Understands the major SPARQL result set modifiers, e.g., to limit or
                sort results, or to return distinct results only once
                BM: Uses ORDER BY to define ordering conditions by variable, function
                    call, or expression
                BM: Uses DISTINCT to ensure solutions in the sequence are unique
                BM: Uses OFFSET to control where the solutions processed start in the
                    overall sequence of solutions
                BM: Uses LIMIT to restrict the number of solutions processed for
                    query results
                BM: Uses projection to transforms a solution sequence into one
                    involving only a subset of the variables 
            CO: Understands the use of SPARQL functions and operators
                BM: Uses the regular expression (regex()) function for string
                    matching
                BM: Uses aggregates to apply expressions over groups of solutions
                    (GROUP BY, COUNT, SUM, AVG, MIN) for partitioning results,
                    evaluating projections, and filtering
                BM: Uses the lang() function to return the language tag of an RDF
                    literal
                BM: Uses the langMatches() function to match a language tag against a
                    language range
                BM: Uses the xsd:decimal(expn) function to convert an expression to
                    an integer
                BM: Uses the GROUP BY clause to transforms a result set so that only
                    one row will appear for each unique set of grouping variables 
                BM: Uses the HAVING clause to apply a filter to the result set after
                    grouping             
            CO: Differentiates between a Default Graph and a Named Graph, and
               formulates queries using the GRAPH clause
                BM: Formulates advanced queries using FROM NAMED and GRAPH on local data
                BM: Formulate advanced queries using FROM NAMED on remote data
            CO: Formulate advanced queries using subqueries
            CO: Uses a temporary variable to extend a query
            CO: Understands the role of Property Paths and how they are formed by
                combining predicates with regular expression-like operators
            CO: Understands how to perform Federated Searches
                BM: Formulates advanced queries on a remote SPARQL endpoint using the
                    SERVICE directive
                BM: Uses federated query to query over a local graph store and one or
                    more other SPARQL endpoints
                BM: Pulls data from a different SPARQL endpoints in one single query
                    using the SERVICE directive
            CO: Converts/manipulates SPARQL query outputs (RDF-XML, JSON) to the
                exact format required by a third party tools and APIs
            CO: Formulates queries using FROM with URLs and local files
            CO: Reads and understands high-level descriptions of the classes and
                properties of a dataset in order to write queries 
            CO: Uses available tools, servers, and endpoints to issue queries against a dataset 
                BM: Execute SPARQL queries using the Jena ARQ command-line utility
                BM: Queries multiple local data files using ARQ
                BM: Uses ARQ to evaluate queries on local data
                BM: Uses Fuseki server to evaluate queries on a dataset
                BM: Queries multiple data files using Fuseki
                BM: Accesses DBPedia's SNORQL/SPARQL endpoint and issues simple
                    queries              
        TP: Visualizing RDF Data
            CO: Uses publicly available tools to visualize data
                BM: Uses Google FusionTables to create maps and charts
            CO: Distills results taken from large datasets so that visualizations are
                human-friendly
            CO: Converts/manipulates SPARQL query outputs (RDF-XML, JSON) to the
                exact format required by a third party tools and APIs    
        TP: Reasoning over RDF
        TP: Assessing RDF data quality
        TP: RDF Data analytics
            CO: Uses available ontology browsing tools to explore the ontologies used
                in a particular dataset    
        TP: Manipulating RDF Data
            CO: Understands the SPARQL Graph Store HTTP protocol for editing 
                graphs on remote servers
            CO: Uses SPARQL to inserting, deleting, modifying RDF data
                BM: Uses POST to add triples to an existing graph
                BM: Uses GET to retrieve triples from a default graph or a named graph
                BM: Uses PUT to insert set of triples into a new graph (or replace an existing graph)
                BM: Uses DELETE to remove a graph
                BM: Uses proper syntax to request specific media types, such as Turtle              

    TC: Creating Linked Data applications
        TP: Storing RDF data
        TP: Linked Data application architecture
        TP: Linked Data mashups




