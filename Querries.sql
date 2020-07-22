use ZooDatabase

set statistics time on 
SELECT Zoo.Id, ZooName, 
Count(Ticket.Id) AS TicketsSold,
SUM(Ticket.TicketPrice) AS EarnedMoney 
FROM Zoo
JOIN Ticket ON
Ticket.ZooId = Zoo.Id
GROUP BY Zoo.Id, ZooName
ORDER BY TicketsSold DESC 
set statistics time OFF

set statistics time on 
SELECT ClientId, 
Client.FirstName, 
Client.LastName, 
Count(Ticket.Id) AS TicketsSold 
FROM Ticket
JOIN Client ON
Client.Id = ClientId
GROUP BY ClientId, Client.FirstName, 
Client.LastName
ORDER BY TicketsSold DESC
set statistics time OFF

set statistics time on 
SELECT  Animal.Id, 
Animal.AnimalName, 
Animal.Age, Animal.CageNumber,
COUNT(ZooPerson.AnimalId) AS FundersCount
FROM Animal
JOIN ZooPerson ON
ZooPerson.AnimalId = Animal.Id
WHERE ZooPerson.PersonType = 'Fundator'
GROUP BY Animal.Id, Animal.AnimalName,
Animal.Age, Animal.CageNumber
ORDER BY FundersCount DESC
set statistics time OFF