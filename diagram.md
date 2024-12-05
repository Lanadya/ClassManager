graph TD
    A[ContentView (Startseite)] -->|Klasse anlegen| B[ModalView (Klasse hinzufügen)]
    A -->|Bestehende Klasse| C[StudentListView (Schülerliste)]
    A -->|Bestehende Klasse| D[SeatingPlanView (Sitzplan)]
    A -->|Bestehende Klasse| E[ResultsView (Resultate)]
    A -->|Archivierte Klassen| F[ArchiveView (Archiv)]
    
    B -->|Speichern| G[Database: Klassen]
    C -->|Speichern| H[Database: Schüler]
    D -->|Speichern| I[Database: Sitzpläne]
    E -->|Speichern| J[Database: Bewertungen]
    F -->|Speichern| G

    C -->|Lesen| G
    D -->|Lesen| G
    E -->|Lesen| G
    F -->|Lesen| G

    C -->|Lesen| H
    D -->|Lesen| H
    E -->|Lesen| J
    F -->|Lesen| I

    style G fill:#f9f,stroke:#333,stroke-width:2px
    style H fill:#f9f,stroke:#333,stroke-width:2px
    style I fill:#f9f,stroke:#333,stroke-width:2px
    style J fill:#f9f,stroke:#333,stroke-width:2px
