BORIS BIKES

Let's go back several years, to the days when there were no Boris Bikes. Imagine that you're a junior developer (that was easy). Transport for London, the body responsible for delivery of a new bike system, come to you with a plan: a network of docking stations and bikes that anyone can use. They want you to build a program that will emulate all the docking stations, bikes, and infrastructure (repair staff, and so on) required to make their dream a reality.

To help structure your work, here are 22 challenges. They all build on one another. They require you to research things, to get stuck, and to find your own solutions. This is on purpose. A developer is a 'knowledge worker' - someone who will spend the majority of their time researching and learning how to solve problems. It'll suck for a bit, but with practice, you will get faster: and there's no better feeling than finding the answer to a problem that's been standing in your way for hours.

USER STORIES:

As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

OBJECT | MESSAGE(Methods)
Person
Bike
Docking Station | release_bike

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

OBJECT | MESSAGE(Methods)
person
bike | bike_working?

C11 - As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

OBJECT | MESSAGE(Methods)
bike |
docking station | dock_bike

C11 - As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

OBJECT | MESSAGE(Methods)
bike
docking station | bike_docked?

c13 - As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.

OBJECT | MESSAGE(Methods)
docking_station |  --> station full if over capacity
