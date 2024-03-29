# Sendle Ruby Technical Exercise

**DO NOT FORK THIS REPOSITORY IN GITHUB, JUST CLONE IT AND FOLLOW THE INSTRUCTIONS FOR SUBMISSION AT THE END OF THE README**

Hi, thanks for taking the Sendle Ruby Technical Exercise.

The purpose of this exercise is for us to get a sense of your skill level with the Ruby
Programming Language and to see how you think and your problem solving approach.

The problem we've chosen is a pricing system, since we have one of those at Sendle.
We're also trying to mimic what it's like to calculate a price for
the delivery of a parcel, since we also do that quite extensively. So hopefully it gives
you a flavour for some of the problems you might work on at Sendle.

This exercise consists of one failing top level integration spec. If you run `rake spec` you should
see it fail. Your goal is to get that test to pass.

* Write as many additional tests and modules as you feel you need.
* It's up to you to define the data structures used internally and as part of the public interface.
* Feel free to use any gems you think will help and any parts of the Ruby core and standard libraries
  you think are appropriate. Of course, the goal here is to show us clean, readable code and allow
  us to see that you have maintainability and correctness at the forefront of your thinking, so keep
  that in mind.

Good luck, have fun.

## Getting Started

To get started, please clone this repository to your dev machine. Then create a new branch
with the name `submission/<your-github-username>`. Commit to this branch as you work.

For the exercise you'll have to build a pricing model and then use it to calculate
and display the prices of a number of shipments.

* Shipments are priced based on delivery range and weight.
* Range is determined by the zones of the origin and destination suburbs.
* If the suburbs are in the same zone, the range is `same-zone`.
* If the origin and destination are in different zones, the range is `different-zone`.
* If either the origin or destination is not in a zone, the shipment is not serviced.
* If the weight exceeds the maxium weight, the shipment is not serviced.

The pricing model should be built from the following two data files. These files can be found in the `data` directory.

* `zones.csv` This contains the zone information. Zones are lists of suburbs, postcode pairs and a zone name.
* `prices.csv` Each row contains the price to deliver a parcel of a given weight for a given range. All prices are in the same currency and weights are in grams.

## Submitting the exercise

When you have completed the exercise and wish to submit your work, please do the following:

1. Make sure all your work is commited to your branch, good commit messages and telling a story
   through the commits is a good thing.
2. Zip up the folder containing your repo and send to either your recruitment contact or jobs@sendle.com.

_**DO NOT PUSH THE REPO UP TO GITHUB OR CREATE A PULL REQUEST AGAINST THIS REPO.**

Thanks!
