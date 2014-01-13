# Design Drill Public Vs Private Interfaces 
 
##Learning Competencies 

* Use instance variables and accessor methods effectively
* Work with objects in Ruby

##Summary 

 A central component of good object-oriented design is understanding how much of an object to *expose*.

*Exposing* an object means making its properties (internal data) available to the "public", i.e. other objects in the program or even other programs. Together, these public methods make up an object's **public interface**. The methods which are private (accessible only within the object itself) make up its **private interface**.

As a general rule, you should only expose as much of an object as is needed for other objects to interact with it. Design objects that can take care of their own properties. They shouldn't just invite everyone else in to mess around with their business.

To play with this principle, let's build a simple `BankAccount` class that stores information about a bank account.

##Releases

###Release 0 : Initialize It

Define the class `BankAccount`.

It should have three instance variables: `@customer_name`, `@type`, and `@acct_number`.

Define an `initialize` method that takes three arguments and assigns them to the above instance variables.  It should look something like this:

```ruby
my_acct = BankAccount.new("Junipero Serra", "Checking", "347-923-239")
```

###Release 1: Add Functionality

####Redefine to_s

One more requirement: define an instance method `to_s` that will return a string with information about the account.

You will probably come across other classes in Ruby that redefine the built-in method `to_s`.  This is an easy way to display relevant information about an object to the user, and to control which information is conveyed.

As an example, here is one way to display object information:

```ruby
my_acct.to_s
# => "Junipero Serra: Checking# *****3239"
```

Once you define `to_s`, you can interpolate your objects in strings like this:

```ruby
str = "My account information is #{my_acct}"
# => "My account information is Junipero Serra: Checking# *****3239"
```

How does that work?

#### Define getter methods

When you create a new instance of `BankAccount`, do you have access to any of the values stored in its instance variables?  No?  Good.

The way we get read access to variables stored within a class is through a pattern called a *getter method*.

Which of the instance variables should have associated *getter* methods?

Think about the implications behind defining a getter method.  Which variables should expose themselves in this way?  Which values should be hidden and protected from the outside world?

#### Define setter methods

Now think about which variables should be able to be *written* to.

Then define your setter method(s).

#### Hide the account

You probably recognized that it might not be a good idea to expose the account number via a getter or setter method.  That is just the kind of information that should remain private.

Sometimes, though, it is useful to expose part of a value.  If a user has many checking accounts, then it might be useful to display some kind of information that allows them to distinguish between the accounts without seeing the full account number.

How would you get around this problem?  What kind of method can you define that will return enough information about the account to be able to distinguish it from other accounts, without exposing the full number? 


<!-- ##Optimize Your Learning  -->

##Resources