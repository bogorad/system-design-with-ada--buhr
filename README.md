# System Design with Ada

**Author:** R. J. A. Buhr  
**Digitization Status:** Complete

This repository contains the digitized chapters of the book "System Design with Ada".

## Table of Contents

### Front Matter
- [Preface](book/chapter01.md#system-design-with-ada---preface)

### Part A: Background
- [Chapter 1: Introduction](book/chapter01.md#chapter-1-introduction)
    - [1.1 Motivation](book/chapter01.md#11-motivation)
    - [1.2 System Design and the System Life Cycle](book/chapter01.md#12-system-design-and-the-system-life-cycle)
    - [1.3 Reflections on Hardware and Software](book/chapter01.md#13-reflections-on-hardware-and-software)
        - [1.3.1 Introduction](book/chapter01.md#131-introduction)
        - [1.3.2 Hardware as an Inspiration for Software](book/chapter01.md#132-hardware-as-an-inspiration-for-software)
        - [1.3.3 The Software-Driven System Factory: A Vision of the Future](book/chapter01.md#133-the-software-driven-system-factory-a-vision-of-the-future)
        - [1.3.4 New Software Development Techniques](book/chapter01.md#134-new-software-development-techniques)
        - [1.3.5 "Cottage" versus "Heavy" Software Industry](book/chapter01.md#135-cottage-versus-heavy-software-industry)
        - [1.3.6 Software As Black Boxes: A Conceptual Leap](book/chapter01.md#136-software-as-black-boxes-a-conceptual-leap)
    - [1.4 Approach of this Book](book/chapter01.md#14-approach-of-this-book)
- [Chapter 2: Ada as a System Design Language](book/chapter02.md#chapter-2-ada-as-a-system-design-language)
    - [2.1 Introduction](book/chapter02.md#21-introduction)
    - [2.2 Top-Down View of the Major New Features of Ada of Interest to the System Designer](book/chapter02.md#22-top-down-view-of-the-major-new-features-of-ada-of-interest-to-the-system-designer)
        - [2.2.1 Introduction](book/chapter02.md#221-introduction)
        - [2.2.2 Packaging and Specification/Body Separation](book/chapter02.md#222-packaging-and-specificationbody-separation)
        - [2.2.3 Rendezvous Mechanism](book/chapter02.md#223-rendezvous-mechanism)
        - [2.2.4 Top-Down Refinement](book/chapter02.md#224-top-down-refinement)
        - [2.2.5 Packaged Input/Output](book/chapter02.md#225-packaged-inputoutput)
        - [2.2.6 Interrupts](book/chapter02.md#226-interrupts)
        - [2.2.7 Conclusions](book/chapter02.md#227-conclusions)
    - [2.3 Ada Wrapup](book/chapter02.md#23-ada-wrapup)
        - [2.3.1 Introduction](book/chapter02.md#231-introduction)
        - [2.3.2 Ada for System Design](book/chapter02.md#232-ada-for-system-design)
        - [2.3.3 Ada for Implementation](book/chapter02.md#233-ada-for-implementation)
        - [2.3.4 Conclusions](book/chapter02.md#234-conclusions)

### Part B: Introduction to Logical Design
- [Chapter 3: Design-Oriented, Pictorial System Description Techniques](book/chapter03.md#chapter-3-design-oriented-pictorial-system-description-techniques)
    - [3.1 Introduction](book/chapter03.md#31-introduction)
    - [3.2 Introduction to Pictorial Descriptions of System Architectures](book/chapter03.md#32-introduction-to-pictorial-descriptions-of-system-architectures)
        - [3.2.1 Pictorial Notation](book/chapter03.md#321-pictorial-notation)
        - [3.2.2 Dynamic Metaphor of Ada Tasking: Human Interactions](book/chapter03.md#322-dynamic-metaphor-of-ada-tasking-human-interactions)
        - [3.2.3 Human-Interaction Metaphor for the Ada Rendezvous Mechanism](book/chapter03.md#323-human-interaction-metaphor-for-the-ada-rendezvous-mechanism)
    - [3.3 Developing a Parts Kit of Canonical Architectures](book/chapter03.md#33-developing-a-parts-kit-of-canonical-architectures)
        - [3.3.1 Introduction](book/chapter03.md#331-introduction)
        - [3.3.2 Architectures Involving Shared Packages](book/chapter03.md#332-architectures-involving-shared-packages)
        - [3.3.3 One-Way Interaction Architectures](book/chapter03.md#333-one-way-interaction-architectures)
        - [3.3.4 Out-of-Order Scheduling](book/chapter03.md#334-out-of-order-scheduling)
        - [3.3.5 Two-Way and Multi-Way Interaction Architectures](book/chapter03.md#335-two-way-and-multi-way-interaction-architectures)
        - [3.3.6 Intertask Flow Control](book/chapter03.md#336-intertask-flow-control)
        - [3.3.7 Packaged Sets of Tasks: Active Packages](book/chapter03.md#337-packaged-sets-of-tasks-active-packages)
        - [3.3.8 Conclusions](book/chapter03.md#338-conclusions)
    - [3.4 Discussion: Structure Graphs and Ada Programs](book/chapter03.md#34-discussion-structure-graphs-and-ada-programs)
        - [3.4.1 Introduction](book/chapter03.md#341-introduction)
        - [3.4.2 Mapping Structure Graphs into Ada Programs](book/chapter03.md#342-mapping-structure-graphs-into-ada-programs)
        - [3.4.3 Limitations of Ada with Respect to the Specification of Structure](book/chapter03.md#343-limitations-of-ada-with-respect-to-the-specification-of-structure)
        - [3.4.4 Have We Restricted Designer Freedom?](book/chapter03.md#344-have-we-restricted-designer-freedom)
    - [3.5 Conclusions](book/chapter03.md#35-conclusions)
- [Chapter 4: Introduction to Architectural Design (with Examples)](book/chapter04.md#chapter-4-introduction-to-architectural-design-with-examples)
    - [4.1 Introduction](book/chapter04.md#41-introduction)
    - [4.2 Design Strategies](book/chapter04.md#42-design-strategies)
        - [4.2.1 Introduction](book/chapter04.md#421-introduction)
        - [4.2.2 Functional Composition/Decomposition Strategy](book/chapter04.md#422-functional-compositiondecomposition-strategy)
        - [4.2.3 Data-Structure-Driven Design Strategy](book/chapter04.md#423-data-structure-driven-design-strategy)
        - [4.2.4 Data-Flow-Driven Structured Design Strategy](book/chapter04.md#424-data-flow-driven-structured-design-strategy)
        - [4.2.5 Design Strategies and Testing Strategies](book/chapter04.md#425-design-strategies-and-testing-strategies)
    - [4.3 Doodling with Data Flow: Guidelines for Step-by-Step Development of a System Design](book/chapter04.md#43-doodling-with-data-flow-guidelines-for-step-by-step-development-of-a-system-design)
    - [4.4 First Design Example: LIFE](book/chapter04.md#44-first-design-example-life)
        - [4.4.1 Introduction](book/chapter04.md#441-introduction)
        - [4.4.2 Data Flow](book/chapter04.md#442-data-flow)
        - [4.4.3 Structure](book/chapter04.md#443-structure)
        - [4.4.4 Design Evaluation](book/chapter04.md#444-design-evaluation)
    - [4.5 Second Design Example: FORMS](book/chapter04.md#45-second-design-example-forms)
        - [4.5.1 Introduction](book/chapter04.md#451-introduction)
        - [4.5.2 Data Flow for Editing](book/chapter04.md#452-data-flow-for-editing)
        - [4.5.3 Structure for Editing](book/chapter04.md#453-structure-for-editing)
        - [4.5.4 Data Flow for Background Printing](book/chapter04.md#454-data-flow-for-background-printing)
        - [4.5.5 Structure for Background Printing](book/chapter04.md#455-structure-for-background-printing)
        - [4.5.6 Design Evaluation](book/chapter04.md#456-design-evaluation)
    - [4.6 Third Design Example: DIALOGUE](book/chapter04.md#46-third-design-example-dialogue)
        - [4.6.1 Introduction](book/chapter04.md#461-introduction)
        - [4.6.2 Data Flow](book/chapter04.md#462-data-flow)
        - [4.6.3 Structure](book/chapter04.md#463-structure)
        - [4.6.4 Design Evaluation](book/chapter04.md#464-design-evaluation)
    - [4.7 Conclusions](book/chapter04.md#47-conclusions)

### Part C: Exploring Logical Design
- [Chapter 5: More Issues About Ada](book/chapter05.md#chapter-5-more-issues-about-ada)
    - [5.1 Introduction](book/chapter05.md#51-introduction)
    - [5.2 Issues in the Dynamic Access and Creation of Tasks](book/chapter05.md#52-issues-in-the-dynamic-access-and-creation-of-tasks)
        - [5.2.1 Introduction](book/chapter05.md#521-introduction)
        - [5.2.2 Indirect Access to Anonymous Members of Task Pools](book/chapter05.md#522-indirect-access-to-anonymous-members-of-task-pools)
        - [5.2.3 Direct Dynamic Connection Between Tasks](book/chapter05.md#523-direct-dynamic-connection-between-tasks)
        - [5.2.4 Dynamic Creation of Tasks](book/chapter05.md#524-dynamic-creation-of-tasks)
        - [5.2.5 Aliasing of Identifiers](book/chapter05.md#525-aliasing-of-identifiers)
    - [5.3 More Task Interaction Structures](book/chapter05.md#53-more-task-interaction-structures)
        - [5.3.1 Introduction](book/chapter05.md#531-introduction)
        - [5.3.2 Flow Control Example](book/chapter05.md#532-flow-control-example)
        - [5.3.3 A Readers/Writers Example, Using Finite State Machines](book/chapter05.md#533-a-readerswriters-example-using-finite-state-machines)
        - [5.3.4 Task Pool Example: AGENT_POOL](book/chapter05.md#534-task-pool-example-agent_pool)
        - [5.3.5 Conclusions](book/chapter05.md#535-conclusions)
    - [5.4 Event Notification](book/chapter05.md#54-event-notification)
    - [5.5 Detecting and Controlling Aberrant Behavior](book/chapter05.md#55-detecting-and-controlling-aberrant-behavior)
        - [5.5.1 Testing](book/chapter05.md#551-testing)
        - [5.5.2 Self Protection by Intertask Protocols](book/chapter05.md#552-self-protection-by-intertask-protocols)
    - [5.6 System Building](book/chapter05.md#56-system-building)
- [Chapter 6: Modularity, Reliability, and Structure: A Communications Subsystem Example](book/chapter06.md#chapter-6-modularity-reliability-and-structure-a-communications-subsystem-example)
    - [6.1 Introduction](book/chapter06.md#61-introduction)
    - [6.2 Requirements of the COMM Subsystem Example](book/chapter06.md#62-requirements-of-the-comm-subsystem-example)
    - [6.3 Modularity](book/chapter06.md#63-modularity)
        - [6.3.1 Introduction](book/chapter06.md#631-introduction)
        - [6.3.2 Degrees of Modularity](book/chapter06.md#632-degrees-of-modularity)
        - [6.3.3 The COMM Subsystem from a Modularity Viewpoint](book/chapter06.md#633-the-comm-subsystem-from-a-modularity-viewpoint)
    - [6.4 Reliability](book/chapter06.md#64-reliability)
        - [6.4.1 Introduction](book/chapter06.md#641-introduction)
        - [6.4.2 Internal Logical Correctness of the COMM Subsystem](book/chapter06.md#642-internal-logical-correctness-of-the-comm-subsystem)
        - [6.4.3 Detection and Recovery from External Operational Errors Using Protocols](book/chapter06.md#643-detection-and-recovery-from-external-operational-errors-using-protocols)
    - [6.5 COMM Subsystem Detailed Design](book/chapter06.md#65-comm-subsystem-detailed-design)
        - [6.5.1 Introduction](book/chapter06.md#651-introduction)
        - [6.5.2 Data Flow](book/chapter06.md#652-data-flow)
        - [6.5.3 Structure and Logic](book/chapter06.md#653-structure-and-logic)
    - [6.6 Design Post-Mortem](book/chapter06.md#66-design-post-mortem)
        - [6.6.1 Introduction](book/chapter06.md#661-introduction)
        - [6.6.2 Design Extensions](book/chapter06.md#662-design-extensions)
        - [6.6.3 Different Fundamental Design Decisions](book/chapter06.md#663-different-fundamental-design-decisions)
    - [6.7 Conclusions](book/chapter06.md#67-conclusions)
- [Chapter 7: Logical Design of Layered Systems: An X.25 Protocol Example](book/chapter07.md#chapter-7-logical-design-of-layered-systems-an-x25-protocol-example)
    - [7.1 Introduction](book/chapter07.md#71-introduction)
    - [7.2 The General Nature of the X.25 Protocol](book/chapter07.md#72-the-general-nature-of-the-x25-protocol)
    - [7.3 X.25: Study in Layered System Design](book/chapter07.md#73-x25-study-in-layered-system-design)
        - [7.3.1 Introduction](book/chapter07.md#731-introduction)
        - [7.3.2 Packet Layer Internal Data Flow Design](book/chapter07.md#732-packet-layer-internal-data-flow-design)
        - [7.3.3 Packet Layer Internal Structure Design](book/chapter07.md#733-packet-layer-internal-structure-design)
    - [7.4 Design Post-Mortem](book/chapter07.md#74-design-post-mortem)
        - [7.4.1 Introduction](book/chapter07.md#741-introduction)
        - [7.4.2 Design Extensions](book/chapter07.md#742-design-extensions)
        - [7.4.3 Different Design Decisions](book/chapter07.md#743-different-design-decisions)
    - [7.5 Extending the Design Approach to the Seven-Layer Open System Interconnection Model](book/chapter07.md#75-extending-the-design-approach-to-the-seven-layer-open-system-interconnection-model)
    - [7.6 Conclusions](book/chapter07.md#76-conclusions)

### Back Matter
- [Chapter 8: References](book/chapter08.md#chapter-8-references)
- [Chapter 9: Questions for Self-Study](book/chapter09.md#chapter-9-questions-for-self-study)

## Figures
All figures have been extracted and are stored in the `book/figures/` directory. They are linked directly within the chapter texts. A reference mapping figures to original page numbers can be found in [img.md](book/img.md).

## EPUB Production
A complete digital version of the book is available in EPUB format:
- [System_Design_with_Ada.epub](System_Design_with_Ada.epub)

### Building the EPUB
The EPUB is generated using [Pandoc](https://pandoc.org/). To build it manually, run the provided build script:
```bash
cd book
./build_epub.sh
```
*Note: This script requires `pandoc` to be installed. On NixOS, you can run it via:*
```bash
nix shell nixpkgs#pandoc -c "cd book && ./build_epub.sh"
```