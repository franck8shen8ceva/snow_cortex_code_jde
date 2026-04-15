from dataclasses import dataclass

@dataclass
class Commercial:
    id: int
    name: str
    region: str

@dataclass
class Client:
    id: int
    name: str
    contact_info: str

@dataclass
class Produit:
    id: int
    name: str
    price: float

@dataclass
class Saison:
    id: int
    name: str
    year: int

@dataclass
class Tarif:
    produit_id: int
    saison_id: int
    price: float

@dataclass
class Vente:
    id: int
    client_id: int
    date: str

@dataclass
class EntreeStock:
    produit_id: int
    quantity: int
    date: str