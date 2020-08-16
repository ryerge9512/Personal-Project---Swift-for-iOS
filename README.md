
# PersonalProject
Designing iOS 11 Apps With Swift Course:
Concentration Game in Swift using Xcode 11.1

/* 
    Ryan Yerge
    COP 3003 - 80601
    8/31/2019
    
    
    Created in OneNote with course deadlines noted to help priortize workloads throughout the semester.
*/

Below are the notes I compiled throughout the semester while trying to learn Swift from the documentation as well as demos and practicing within the Xcode IDE. It was most certainly a learning curve trying to figure out Xcode and Swift. When I first selected creating iOS apps for my personal project, I was not aware that Xcode is solely available for the Mac desktops. Not that my hand was forced in having to go out and purchase a MacBook Air, but I figured it would be great experience for me personally as a software engineering student to be familiarized with the Mac OS as well as having some exposure to mobile development at the same time. I have a lot more to learn about Swift and I fully intend on continuing to improve this personal project to add more customizations and features in the near future.


# Basics Notes
Tuesday, 9/17/2019





Swift has it owns version of C and objective-C types IE Int, Double, Float, Bool, String, etc.
	- (3) primary collection types
		○ Array
		○ Set
		○ Dictionary
	- Much more powerful constants than in C
		○ Constants make code safer and clearer in intent
	- Swift introduces advanced types not found in object. C
		○ Tuples: create and pass around groupings of values
	- Optional types handle the absence of a value
		○ More powerful than "nil" pointers in object. C
	- Type-safe language 
		○ If a value requires a String, Swift prevents other types, like Int, from being passed.
		○ Catch and fix errors as early as possible


Constants & Variables

Values of constants cannot be changed once it's set, whereas variables can assume different value in future.



Declaring Constants & Variables

Constants  are declared using the "let" keyword

Variables are declared using "var"

	- IE let maximumNumberOfLoginAttempts = 10
	-  var currentLoginAttempt = 0
		○ currentLoginAttempt is the counter which will change as it's incremented w/ each attempt 
		○ maximumNumberOfLoginAttempts will not change

Declare multiple constants or variables on a single line separated by commas:
	-  var x = 0.0, y = 0.0, z = 0.0




Type Annotations

To be clear about the kind of values a const or var can hold, can provide a "type annotation" by typing a colon (:) after the const or var name, followed by a space and data type:

	-  IE var welcomeMessage: String
	-  var red, green, blue: Double
	
	- Can be read as "Declare variable called 'welcomeMessage' that is of type String."
		○ Vars red, green, blue are of type Double.
		

It's rare to write annotations in practice because Swift can infer the type usually upon initialization of a var or const.




Naming Constants & Variables

Const and var names can contain almost any character, including Unicode:

		


	- Names can't contain whitespace, math symbols, arrows, private-use Unicode scalar values, or line-and-box -drawing characters.
	- Can't begin w/ a #, but can contain elsewhere in name

Once declared, cannot declare again w/ the same name or change it to store different types
	- Cant change var --> const, or conversely can't change const --> var


Can change the value of existing var to another compatible type (reassignment):

	-  var friendlyWelcome = "Hello!"
		friendlyWelcome = "Bonjour!"
		




Printing Constants & Variables

Can print the current value of a const or var with the print(_:separator:terminator:) function
	- IE     print(friendlyWelcome)

	- Function prints output in Xcode's console pane. 
	- "separator" and "terminator" parameters have default values -- can be omitted when calling function
		○ Function terminates line by adding a line break
		○ To print w/o line break, pass empty string " " as the terminator
			§ IE print(someValue, terminator: "")


Swift also uses string interpolation to include the name of a const or var as a placeholder in a longer string
	- Wrap name in parenthesis and escape with a backslash before opening parenthesis

	- IE print("The current value of friendlyWelcome is \ (friendlyWelcome)")




Comments

Comments are notes/documentation which are ignored by the compiler. Similar to comments in C:
	- // this is a comment

	- /* This is also a comment
	 but written over multiple lines */
	
		○ Multiline comments can be nested inside other multiline comments. Enables programmer to comment out large blocks of code quickly and easily
	
	
	
	
Semicolons (;)

Swift does not require a semicolon after each statement, although can do so to maintain practice. 
	- Semicolons (;) are required if writing multiple separate statements on a single line
		○ 




Integers

Whole numbers w/ no fractional component -- can be signed or unsigned
	- Swift provides 8/16/32/64 bit forms for un/signed integers
		○ 8-bit is of type UInt8, 32-bit is of type UInt32, and so on


Integer Bounds

Can access min. and max. of each integer type w/ its min and max properties:

 let minValue = UInt8.min 
	- minValue = 0

 let maxValue = UInt8.max
	- maxValue = 255



Int

Usually do not need to pick specific size of int. We can use Int which has the same size as the current machine's native word size
	- On 32-bit platform, Int is same size as Int32
	- On 64-bit platform, Int is same size as Int64

Unless need to work w/ specific size of integer, always** use Int



UInt

Unsigned integer type that has same size as current machine's native word size.
	- Use only when need unsigned integer with same size as the platform's native word size. 
	- Stored values 0 - 255 (UInt8 == UnsignedInt)
	- Stored values -128 - 127 (Int8 == signed int)
	






Floating Point Numbers

Fractional component of numbers. Swift offers two signed floating-point # types:
	- Double -- represents 64-bit floating-pt #
	- Float -- 32-bit floating-pt #



Type Safety & Type Inference

Swift is a type-safe language -- encourages you to be clear on types of values code can work with.
	- IE if code requires a String, cannot pass Int by mistake**
	- Swift performs type checks when compiling code and flags any mismatched types
		○ Catch & fix error as early as possible


Type inference enables a compiler to deduce the data type automatically when compiling code by examining values that were provided by programmer. 
	- This is done by assigning literal to const or var when it is declared (initialization)
	- IE  let meaningOfLife = 42 
		○ //meaningOfLife is inferred as to be of type Int

	- If do not specify type for floating-point literal, Swift automatically infers as type Double. 
	- IE let pi =  3.14159
		○ // pi is inferred to be type Double
	- If arithmetic is performed w/ mixed types like Int and Double, Swift favors Double 
		
		
		
Numeric Literals

Integer literals can be written as:
	- Decimal # -- no prefix
	- Binary # -- 0b prefix
	- Octal # -- 0o prefix
	- Hex # -- 0x prefix


IE all of these integer literals have a decimal value of 17:
	-  let decimalInteger = 17
	-  let binaryInteger = 0b10001
	-  let octalInteger = 0o21
	-  let hexInteger = 0x11


Decimal floats can also represent exponent, e
	- 1.25e2 --> 125.0
	- 1.25e-2 --> 0.0125


Numeric literals can contain formatting for readability. Integers and floats can be padded with extra zeros and contain underscores. 
	-  let paddedDouble = 000123.456
	-  let oneMillion = 1_000_000




Numeric Type Conversion

Using the Int type of all general-purpose integer const and var. Lets values become interoperable in Xcode and match inferred types for literal values.

Other integer types are only used when specific to the task at hand -- 
	- Explicitly sized data from external source
	- Performance
	- Memory usage
	- Other necessary optimization



Integer Conversion

Range of values that can be stored in an integer const or var is different for each numeric type. 
	· -128 - 127 for Int8
	· 0 - 255 for UInt8

Error at compile time if try to store a # that wont fit into const/var
	·  let cannotBeNegative: UInt8 = -1;
		○ //UInt8 can't store negatives, will cause error.
	·  let tooBig: Int8 = Int8.max + 1
		○ // Int8 can't store values larger than its max. Will cause error as well.



Too convert numeric types, initialize desired type with existing value --

	 let twoThousand: UInt16 = 2_000
	 let one: UInt8 = 1
	 let twoThousandAndOne = twoThousand + UInt16(one)
	 
Const "one" is of type UInt8, and cannot add together directly b/c not the same type. 
	- Call UInt16() to create new UInt16 initialized with value passed as argument
	- someType(ofInitialValue) is default way to call initializer of a Swift type and pass an initial value



Integer & Floating Point Conversion

Conversions between integer and floating-points must be made explicit --

	 let three = 3
	 let pointOneFourOneFiveNine = 0.14159
	 let pi = Double(three) + pointOneFourOneFiveNine
	
	**w/o the Double() conversion, this addition would not be allowed**
	
Floating-point to integer conversion must be explicit as well -- Int type can be initialized with Double or Float value:

	 let integerPi = Int(pi)
	
	//integerPi now equals 3 (truncated due to Int)
	
	
Rules for combining numeric const and var are different from the rules for numeric literals. 
	- Literal value 3 can be added with 0.14159
	- Literals do not have explicit type in and of themselves 
		○  Their type is inferred only at the point they're evaluated by the compiler





Type Aliases

Type aliases define alternative name for an exisiting type.
	- Use "typealias" keyword
	- Useful for when you want to refer to an existing type by name that's contextually more appropriate.
		○ Working w/ data of specific size from external src

	 typealias AudioSample = UInt16
	
	- //Then can use alias anywhere might use the original name -- 

	 var maxAmplitudeFound = AudioSample.min
	
	- //maxAmplitudeFound is now 0




Booleans

Logical values T/F -- can be inferred just like other data types
	- Particularly useful when working w/ conditional statements
	- Conditional statements like "if-else" and other loops covered later




Optionals

Use optionals in situations where a value may be absent. 
	- Either there is a vlaue -- can unwrap the optional to access it
	- Or there isn't a value at all

Example provided tries to convert String to Int 
	- Not every string can be converted IE "123" can be converted to numeric value 123 but "hello, world" doesn’t have obvious numeric value associated.

	 let possibleNumber = "123"
	 let convertedNumber = Int(possibleNumber)
	 
	//convertedNumber is inferred to be of type "Int?" or optional Int
	
	- Since initializer may fail, it returns optional Int rather than solely Int, written as Int?



 nil 

You set an optional to a valueless state by assigning it the special value "nil"

	 var serverResponseCode: Int? = 404
	
	//serverResponseCode contains an actual Int value of 404
	
	 serverResponseCode = nil
	
	//serverResponseCode now contains no value
	
**cannot use "nil" w/ non-optional const and var**

	- If const or var in code needs to work with absence of a value under certain conditions then delcare as optional

	- If declare an optional w/o providing initial value, var automatically sets to "nil"
		○  var surveryAnswer: String?
		
		//surveryAnswer automatically set to nil 
		
		
		
If Statements & Forced Unwrapping

Can use an if-statement and determine whether or not an optional contains a value by comparing to "nil"

	 if convertedNumber != nil {
		
		Print("convertedNumber contains some integer value.")
	}


	· Once sure optional does indeed contain a value, you can access its underlying value by adding an exclamation mark (!) to the end of the optional's name --
		○ This is known as forced unwrapping the optional's value

	 if convertedNumber != nil {
	
		Print("convertedNumber has an integer value of \ (convertedNumber!).")
	
	}
	
	**Tying to use (!) to access nonexistent optional triggers runtime error**
	



Optional Binding

Can use optional binding to find out whether optional contains a value, and if so, to make the value available as a temp const or var.
	
	



Reads as "If the optional Int returned by Int(possibleNumber) contains a value, set a new constant called acutalNumber to the value contained in the optional. 
	- If successful, actualNumber const becomes available for use w/in the first branch of the if-statement
		○ It has already been initialized w/ the value contained w/in the optional, so no need for (1) suffix to force unwrapping

	- Can include as many optional bindings and Boolean conditions in a single if-statement, just needs to be separated by commas
		○ If any of the values in the optional bindings are nil or evaluated as "false" then the whole if-statement's condition is considered to be "false"
		
		○ The following conditionals are equivalent:

	

	**const and var created w/ optional binding w/in an if-statement is only available w/in the body of the if-statement**
	
	- Conversely, const and var created w/ a "guard" statement are available in the lines of code that follow the "guard" statement 



Implicitly Unwrapped Optionals

Depending on the program's structure, it can be obvious that the optional will always have a value once that value is set. 
	- In these cases, it is useful to remove the conditional to check it and unwrap the optional's value each time it's accessed.
	
	- These are referred to as implicitly unwrapped optionals. Write as (String!) rather than (String?).
	- Implicitly unwrapped optional is a normal optional, but can also be used like a non-optional value w/o the need to unwrap each time.

	- The following shows difference b/w optional string and implicitly unwrapped optional string:

	
	
	- Implicitly unwrapped opt essentially give permission for optional to be unwrapped automatically whenever used. 
		○ Rather than placing (!) after optional's name each time, you place exclamation mark after optional's type when you declare it. 

	**IF implicitly wrapped optional is "nil" and is accessed, it will trigger a runtime error**
	
		○ Can still treat implicitly wrapped optional like a normal option to chek if it has a value
	
		

	
		○  w/ optional binding to check and unwrap in single statement
	
		
		
	
	
	**Don't use implicit unwrapping when there's a possibility of the variable becoming "nil" at a later point. **
	
	
	
	
Assertions & Preconditions


Assertions and preconditions are checks that happen at runtime. 
	- They're used to make sure essential conditions are satisfied before executing further code. 
	- Express the assumptions and expectations you have while coding.
		○ Assertions help find mistakes and incorrect assumptions during development
		○ Preconditions help detect issues in production

	- Assertions and preconditions are useful documentation w/in code
	- They aren't used for Error Handling where experience recoverable or expected errors
		○ Failed assertion or precondition indicates an invalid program and there's no way to catch a failed assertion

Assertions and preconditions do not substitute methodological approach to designing code, but they do enforce valid data and state 

	- Causes app to terminate more predictably if invalid state occurs
	- Helps make problem easier to debug
	- Stopping execution as soon as invalid state is detected limits damage caused by that invalid state


Debugging with Assertions

Assertion is called by the assert(_:_:file:line:) function
	- Evaluates as True or False and message to display if False


	
	
	- Program execution continues if age >= 0 (nonnegative)
		○ If false as in example above, application terminates

	- Can omit message and it would repeat condition as prose
		○ IE assert(age >= 0)
	
	- If code already checks condition, use the assertionFailure(_:_:file:line:) function to indicate an assertion has failed

	
	


Enforcing Preconditions

Use a precondition whenever condition has potential to be false, but must be true for code to continue to execute. 
	- IE check if array index out of bounds, or function passed a valid value

	- Write a precondition by calling precondition(_:_:file:line:) function
		○ Pass an expression to function that evaluates as True or False and a message to display in the case of condition being False

	
	
	- Can also call the preconditionFailure(_:_:file:line:) function to indicate that a failure occurred 
		○ IE if default value of switch structure taken, but all valid input data should have ben handled by one of the other cases of the switch statement.

	
	



# Operators in Swift
Thurs., 9/19/2019




Operator  is a special symbol or phrase to check, change, or combine values. 
	- IE addition (+) or logical AND (&&) 

Swift supports most standard C operators and improves several capabilities to eliminate common coding errors.
	- (=) doesn't return a value when == was intended
	- Arithmetic operators detect and disallow value overflow
		○ Can opt in to value overflow behavior using Swift's overflow operators
	- Swift provides range operators to express a range of values
		○ IE a..<b  and a…b



Terminology

Operators are unary, binary, or ternary.

	- Unary operators operate on single target
		○ Prefix operators appear immediately before IE !b
		○ Postfix operators are immediately after IE c!
	
	- Binary operators operate on two targets IE 2 + 3
		○ Infix because appear b/w two targets
	
	- Ternary operate on three targets
		○ Only one ternary conditional operator --> a ? b : c 



Assignment Operator

A = B initializes or updates the value w/ the value of b.


Arithmetic Operators

	- Addition (+)
	- Subtraction (-)
	- Multiplication (*)
	- Division (/)

Unlike arithmetic operators in C, Swift's arithmetic operators do not allow values to overflow by default. 
	- Can opt in value overflow behavior by using Swift's overflow operators IE a &+ b
	
	- Concatenation for String same as in Java
		○ "hello," + " world!" == "hello, world!"



Remainder Operator

Remainder operator (a % b) works out how many multiples of "b" will fit inside "a" and returns value left over, or the remainder.

	**(%) also know as modulo operator in other languages, but its behavior in Swift for negative #'s means it is strictly a remainder rather than a modulo operation**
	

Unary Minus Operator

Sign of numeric value can be toggled using a prefixed (-), or  unary minus operator.
		
		


Unary Plus Operator

Unary plus operator (+)  simply returns value it operates on, w/ no change. 

	
		
	- Although it doesn't do anything, it can be used to provide symmetry in code for positive #'s and the unary minus operator for negative #'s



Compound Assignment Operators

Like C, Swift provides compound assignment operators 

	- Addition assignment operator (+=)
	- Subtraction (-=)
	- Multiplication (*=)
	- Division (/=)
	- Does not return value like regular assignment operator


Comparison Operators





Ternary Conditional Operator

Special operator w/ (3) parts:

Question ? Answer1 : answer2

	- Shortcut for evaluating two expressions
	- Shorthand for simple "if-else" structure


	



**Avoid combining multiple instances of the ternary conditional operator as it can make code hard to read due to its conciseness**



Nil-Coalescing Operator

(A ?? B) unwraps an optional if "A" contains a values, or returns a default value "B" if "A"==nil

	- Nil-coalescing is shorthand for --
		
		


		○ Uses ternary conditional operator and forced unwrapping (a!)
		○ Short-circuit evaluation occurs when value of "a" is non-nil and "b" does not get evaluated
	
	
	
	- Because userDefinedColorName is initalized as "nil," nil-coalescing operator defaults to defaultColorName, or "red", for the defaultColorName




Range Operators

Swift includes several range operators that are shortcuts for expressing a range of values


Closed Range Operator

Useful for when iterating over a range in which you want all of the values to be used
	- For-in loop:

	
	
	
Half-Open Range Operator

Half-open range operator (a..<b) defines range that runs from "a" to "b" but doesn’t include "b"

	- Particularly helpful for working with zero-based lists like arrays to count up to but not including the length of the list:


	
	
	
One-Sided Ranges

Alternative form of ranges that continue as far as possible in one direction
	- IE a range that includes all the elements of an array from index 2 to the end of the array
	- Omit values from one side of the range operator


	
	
	
	
	Can also have one-sided form of half-open range operator
	
	
	
	
	
	
	
Logical Operators

Modify or combine Boolean logic values T/F
	- NOT !a
	- AND &&
	- OR ||


Logical NOT

Inverts a Boolean value so T --> F && F --> T
	- Prefix operator


Logical AND

Both values must be true for overall expression to evaluate as True

Logical OR

Uses short-circuit evaluation where only one of the conditions needs to be true. If first one evaluates as True, second condition will not be evaluated

Combining Logical Operators

Create a longer compound expression using  &&  and ||
	- Left-associative meaning that compound logical expression will be evaluated left to right


Explicit Parentheses

Useful to include parentheses especially if evaluating compound logical operators
	- Makes complex expression easier to read


	


# Strings & Chars
Friday, 9/20/2019






String is a series of characters

	- Swift's String and  Character types provide fast, Unicode-compliant way to work w/ text
		○ Concatenation w/ + operator
		○ Mutability is managed by choosing const or var
		○ Can insert const, var, literals, and expression into longer strings == string interpolation


**Swift's String type is bridge w/ Foundation's NSString class and can access methods defined by NSString by importing Foundation and Cocoa** 
	- See "Bridging Between String and NSString"



String Literals

Sequence of characters surrounded by double quotes " " == String literal


Multiline String Literals

If a string spans multiple lines, use multiline String literal -- sequence of chars surrounds by three double quotes:


	


If want to include line breaks to make source code easier to read, include a backslash so it wont be a part of the String's value:


	
	

Special Characters in String Literals

String literals can include the following:

	- Escaped special characters:
		○ \0 -- null character
		○ \\ -- backslash
		○ \t -- tab
		○ \n -- line feed
		○ \r -- carriage return
		○ \" -- double quote
		○ \' -- single quote
	
	- Arbitrary Unicode scalar value written as \u{n}
		○ "n" is a 1-8 digit hex #


	
	
	- Can include a double quote in a multiline string literal w/o escaping it
		○ To include text in a multiline String, escape at least one of the quotation marks



Extended String Delimiters

Allows special characters to be placed in a string literal w/o invoking their effect
	- Place string b/w double quotes and surround that w/ # signs
	- IE printing #"Line 1\nLine 2"# prints the \n rather than printing the string across two lines

If want to include effects, match number of # signs w/in string following escape character (\)
	- IE if string is #"Line 1\nLine 2"# and want to still break line, can use
	
	#"Line 1\#nLine 2"#
	
	
	
	
Initializing an Empty String

To create empty String, assign empty string literal or initialize a new String instance

	
	
Check whether String value is empty by checking its Boolean isEmpty property:

	
	
	


String Mutability

Can indicate whether a particular String can be modified (or mutated) by assigning it to a var or a const.







Strings Are Value Types

Swift's String type is a value type. When String is created and utilized, the value is copied when passed to a function/method, or assigned to const/var
	- A new copy of existing String value is created and the new copy is passed or assigned, not the original



Working With Characters

Can access individual character values for a String by iterating over the string w/ a for-in loop:

	
	
	
Can create a stand-alone Character const or var from a single-character string literal by providing a Character type annotation:

	
	
	
String values can be constructed by passing an array of Character values as an argument to its initializer

	
	
	

Concatenating Strings and Characters

String values can be added together, or concatenated, w/ addition operator (+)

	
	
	
	
Can also append a String value to an existing String variable w/ addition assignment operator (+=)

	
	
	
Can append a Character to a String var w/ String type's append() method

	
	
	


String Interpolation

Way to construct a new String value from a mix of const, var, literals and expressions by including their values inside a string literal
	- Each item inserted into a string literal is wrapped in a pair of parentheses, prefixed by a backslash (\)

	
	
	
Unicode

International standard for encoding, representing, and processing text in different writing systems. 
	- Represent almost any character from any language 


Unicode Scalar Values

Unicode scalar value is a unique 21-bit # for a character or modifier 
	- U+0061 "a" or U+1F425 for "🐥"

Not all 21-bit scalar values are assigned to a character, some scalars are reserved for future assignment or for use in UTF-16 encoding.


Extended Grapheme Clusters

Every instance of Swift's Character type represents a single extended grapheme cluster -- a sequence of one or more Unicode scalars that when combined, produce a single human-readable character.

	- Letter "é" can be represented by single Unicode scalar U+00E9

	- Same letter can be represented as a pair of scalars
		○ Standard "e" U+0065 followed by "combining acute accent" U+0301
		○ "combining acute accent" is graphically applied to the scalar that precedes it, turning "e" into "é"

	
	
	
Unicode scalars for regional indicator symbols can be combined in pairs to make a single Character values:
	
	
	


Counting Characters

To retrieve the count of the Character values in a String, use the  count property of the string

	
	
**since extended grapheme characters can require different amounts of memory to store, therefore the # of characters in a string can't be calculated w/o iterating through the string to determine its extended grapheme boundaries. 
	- If working w/ particularly long string values, count must iterate over the Unicode scalars in the entire string in order to determine the characters for that string. 
	- Count returned is not always the same as the "length" property of the NSString containing same # of characters



Accessibility and Modifying a String

Can access and modify a string through its methods and properties, or by using subscript syntax


String Indices

String.index corresponds to the position of each Character in the string
	- As mentioned earlier, different characters require different amounts of memory to store
	- To determine which Character is at a particular position, must iterate over each Unicode scalar from the start or end of String
		○ For this reason, Swift cannot be indexed by integer values

	- Use the startIndex property to access position of first character
	- endIndex is the position after the last character in a String.
		○ As a result, endIndex isn't valid to a String's subscript
		○ If string is empty, startIndex and endIndex are ==

	- Can access indices before and after a given index using index(before:) and index(after:) methods
		○ To access index farther away from given index, can use index(_:offsetBy:) method instead of calling of these methods multiple times

	
	


Use the indices property to access all of the indices of individual characters in a string

	




Inserting and Removing

To insert a single character into a string at a specified index, use the insert(_:at:) method 
	- To insert contents of another string at a specified index, use insert(contentsOf:at:) method


	
	
To remove a single character from a string, use the remove(at:)  method 
	- To remove a substring at a specified range, use the removeSubrange(_:) method


	
	
	(here I decided to underline classes to enforce OOP concepts)
	
Substrings

When obtaining a substring from a string IE via subscript or prefix(_:) method the result is an instance of Substring -- not another string 
	- Substrings have most of the same methods as strings
	- Unlike strings, substrings are temporary while performing actions on a string
	- When ready to store result, convert substring to an instance of String

	
	
	- Each substring has a region of memory where chars that make up substring are stored
		○ Substrings can reuse part of the memory where original string is stored
			§ Or part of memory that stores another substring
		○ Strings have similar optimization but they don't share mem. b/c their addresses would be ==
	- Don’t have to pay the performance cost of copying memory until you modify either string or substring 
	
			
	
	
	


Comparing Strings

Swift has (2) ways to compare textual values
	1. String and char equality
	2. Prefix & Suffix equality
	

String and Character Equality

String and character equality is checked w/ the == operator and != "not equal to" op.



Two Strings or Characters are == if their extended grapheme clusters are canonically equivalent: have the same linguistic meaning and appearance, even if composed from different Unicode scalars
	- Letter "é" can be represented by single Unicode scalar U+00E9

	- Same letter can be represented as a pair of scalars
		○ Standard "e" U+0065 followed by "combining acute accent" U+0301
		○ "combining acute accent" is graphically applied to the scalar that precedes it, turning "e" into "é"
	
Both of these extended grapheme clusters are valid ways to represent "é" therefore they are canonically equivalent 
	- Other examples…


	
	
Capital letter "A" in English is not equivalent to "A" used in Russian because they don’t have the same linguistic meaning -- not canonically equivalent

	
	
	

Prefix and Suffix Equality

To check if a string has a particular prefix or suffix, call the string's hasPrefix(_:) and hasSuffix(_:) methods
	- Both take type String argument and return Boolean

	
	
	
	
	
	
	
	
The hasPrefix(_:) and hasSuffix(_:) methods perform char by char canonical equivalence comparison b/w extended grapheme clusters in each string







# Collection Types
Friday, 9/20/2019








Swift provides (3) primary collections types: arrays, sets, and dictionaries 
	- All used for storing collections of values
	- Arrays are ordered collections
	- Sets are unordered collections of unique values
	- Dictionaries are unordered collections of key-value associations



	
All of these collection types in Swift are always clear about types of values and keys can store
	- IE can't insert a value of wrong type into a collection by mistake
	- Can be confident about type of values retrieved from a collection



Mutability of Collections

Arrays, sets, and dictionaries stored in vars are mutable. 
	- Can change the collection after its created by adding, removing or changing items in the collection
	- If assign collection to a const then it becomes immutable -- size and contents cannot be altered

**good practice to create immutable collections in all cases where collection does not need to change**


Arrays

Stores values of same type in an ordered list.
	- Swift's Array type is bridged to Foundation's NSArray class 

Array Type Shorthand Syntax

Type of Swift array is written in full as Array<Element>, where Element is type of values that array is allowed to store. 
	- Can also write the type of an array in shorthand form as [Element]
	- Although both functionally the same, shorthand is preferred

Creating an Empty Array



	- Empty pair of square brackets [ ] is an empty array literal -- create an empty array 




Creating an Array with a Default Value

Swift's Array type also provides an initializer for creating an array of a certain size w/ all values set to a default value
	- Pass initializer a default value "repeating: " and number of times value is repeated in new array "count: "
		○ 
	
	
Creating an Array by Adding Two Arrays Together

Can create a new array by adding together two existing arrays w/ compatible types and the addition (+) operator
	- New array's type inferred from types added together

	
	

Creating an Array w/ an Array Literal

Can initialize an array w/ an array literal which is shorthand to write (1) or more values as an array collection
	- [value 1, value 2, value 3]

	
	
	- shoppingList declared as var and not const since more items are likely to be added


Accessing and Modifying an Array

Access and modify an array via its methods and properties, or subscript syntax
	- To find # of items, use .count property (read-only)
		



	- Use Boolean .isEmpty property to check whether the count == 0






	- Can add new item to end of an array thru append(_:) method





		○ Can also append an array using the addition assignment operator (+=)
	
	



	- Retrieve a value using subscript syntax




	- Can use subscript syntax to change a range of values at once, even if replacement values has a different length than the range being replaced.

	
		
		○ Replaces "chocolate spread", "cheese", and "butter" w/ "bananas" and "apples"
	



	- To insert an item at a specified index, call insert(_:at:) method

	
	
	
	- Similarly, use remove(at:) method

	
	
		○ Method returns item at specified index, can ignore if don't need it**
		○ Any gaps in an array are closed when an item is removed, and indices slide accordingly for items left in array
	
	- If want to remove final item from array, use removeLast() method

	
	
	
Iterating Over an Array

Can iterate over entire set of values in an array using a "for-in" loop:

	
	
	
	
Dictionaries

Dictionaries stores associations b/w keys of the same type and values of the same type in a collection w/ no defined ordering.
	- Each value associated w/ a unique key which acts as an identifier for that value w/in the dictionary
	- Unlike items in an array, items in dictionary do not have specified order

Dictionary is used when need to look up values based on their identifier, much how a real dictionary works
	- Swift's Dictionary is bridged to Foundation's NSDictionary class



Dictionary Type Shorthand Syntax

Type of Swift dictionary is written in full as Dictionary<Key, Value> 
	- "Key" is type of value can be used as a dictionary key
	- "Value" is type of value the dictionary stores for those keys

Can also write type dictionary in shorthand of [Key: Value] 
	- both functionally identical, but shorthand is preferred


Creating an Empty Dictionary

Initializer syntax for creating an empty dictionary

	
	
	- Empty dictionary of type [Int: String] to store human-readable names of integer values

	- If context already provides type information, can create empty dictionary w/ an empty dictionary literal, [:], colon inside square brackets

	



Creating a Dictionary w/ a Dictionary Literal

Can initialize a dictionary with a dictionary literal w/ similar syntax to array literal
	- Shorthand way to write one or more key-value pairs as a Dictionary collection
	- Key-value pair is a combo of key and value separated by colon (:)

	
	
	
	
		○ "airports" dictionary is a Dictionary whose keys are of type String and whose values are also of type String
		○ Declared as var rather than const so more airports can be added
		○ As w/ arrays, don't have to write type if initializing w/ dictionary literal whose key/values have consistent types
	
	
		○ Swift can infer [String: String] is correct type
	


Accessing and Modifying a Dictionary

Can access and modify a dictionary through its methods and properties, or by subscript syntax
	- As w/ array, can find out # of items in a Dictionary by checking its read-only .count property

	
	
	
	- Boolean isEmpty as shortcut for checking whether .count == 0
		
	
		
	- Add new items to dictionary w/ subscript syntax.
		○ Create a new key w/ appropriate type and place it as the subscript index
		○ Assign new value of appropriate type 





	- Instead of subscripting, use a dictionary's updateValue(_:forKey:) method to set or update the value for a particular key
		○ Sets a value for a key if none exist, or updates value if key does exist
		○ Returns old value to check if updated
			§ updateValue(_:forKey:)  returns optional value of dictionary's value type
			§ IE a dictionary that contains String values -- return value of type String?
			§ Contains old value for that key if one existed prior to updating, or nil if no value existed**


	


		○ You can use subscript syntax to retrieve a value from the dictionary for a particular key.
		○ Its possible that no value exists when requesting a key
			§ Returns optional value of dictionary's value type
				□ If contains value -- returns existing value
				□ If there's no value -- return "nil"
	

	

	
	
	- You can use a subscript to remove a key-value pair from a dictionary w/ the removeValue(forKey:) method.
		○ Removes key-value pair if it exists and returns removed value
		○ Returns "nil" if no value exists


	
	
	
	
	
Iterating Over a Dictionary

Can iterate over key-value pairs in a dictionary w/ "for-in" loop
	- Each item is returned as a (key, value) tuple. 
		○ Can decompose tuple's members into temporary constants or variables as part of the iteration:


		
		
	- Also can retrieve an iterable collection of a dictionary's keys or values using:
		○ .keys property to access keys
		○ .values property to access paired value


	
	


If need to use dictionary's keys or values w/ an API that takes an Array instance, initialize a new array w/ the .keys or .values property:

	
	
	
Swift's Dictionary type does not have defined ordering
	- To iterate keys or values of a dictionary in specific order, use sorted() method on its .keys or .values property.








# Control Flow
Sat., 9/21/2019








Swift provides a variety of control flow statements: while, if/guard/switch for branches, break/continue to transfer flow of execution to another point in your code.

For-in loop makes it easy to iterate over arrays, dictionaries, ranges, strings, and other sequences.

	- Swift's switch statement is considerably more powerful than its counterpart in many C-like lang. 
		○ Case can match many different patterns
			§ Interval matches
			§ Tuples
			§ Casts to specific type
		○ Matched values can be bound to temporary const or vars for use w/in the case's body
		○ Complex matching conditions can be expressed w/ "where" clause for each case.



For-In Loops

Use to iterate over a sequence IE items in an array, ranges of #'s, chars in a string

	
	
	
Can also iterate over a dictionary to access key-value pairs
	- Each item is returned as (key, value) tuple when dictionary is iterated
	- Decompose tuple members into explicit constants for use w/in body of the for-in loop

	
	
Contents of Dictionary are inherently unordered
	- No guarantee on order in which retrieved
	- Order in which inserted doesn't define iteration order



Can use for-in loops w/ numeric ranges

	
	
	- Range of 1 - 5 inclusive
	- Value of index set to first number in range, 1
	- Statements inside loop are exe

		○ After a statement is executed, value of index is updated to contain 2nd value in the range (in this case, 2)
		○ Print function is called again
	
	- Index is a const whose value it automatically set at the start of each iteration of the loop.
		○ Index does not have to be declared before it is used
		○ Implicitly declared simply by its inclusion in the loop declaration
		○ No need for "let" keyword

If don’t need each value from a sequence, can ignore values by using an underscore in place of variable name.

	
	


In some situations, might not want closed ranges which are inclusive of both endpoints
	- Consider drawing tick marks for each min on a watch face, starting w/ 0
	- Use half-open range operator (..<) to include lower but not upper bound (n-1)

	
	
	
Some UI/UX want fewer ticks -- every 5 min. 
	- Stride(from:to:by:) function to skip the unwanted marks


	
	
Closed ranges available by using stride(from:through:by:) instead

	
	


While Loops

Performs statements until condition is no longer met.
	- Best used for unknown # of iterations
	- Swift has (2) kinds of while loops:
		○  while evaluates its condition at the start of each pass thru the loop
		○  repeat-while evaluates condition at the end of each pass thru the loop


While

Starts by evaluating a single condition -- sentinel value to allow entry into loop structure.
	- If T, set of statements are repeated until condition becomes F


Repeat-While

Performs a single pass thru the loop statements before considering conditional (do-while)

	
	
	

Conditional Statements

Code needs to branch to perform specific tasks, typically set by conditions. 

Swift provides (2) conditional formats: if statement and switch statement
	- If statement evaluates simple conditions w/ few outcomes
	- Switch is better suited to complex conditions w/ possible permutations
		○ Useful for pattern matching (Concentration game)


If

Executes set of statements only if condition is True

	

	- Can include "else" clause for when "if" condition is False

	
	
	
	- Chain "else-if" statements to consider additional clauses

	
	
	
	
Switch

Considers a value and compares it against several possible matching patterns. 
	- Executes appropriate block of code if finds a match
	- Alternative to if statement for responding to multiple potential states

		

No Implicit Fallthrough

In contrast to switch statements in C, switch statements in Swift do not fall through the bottom of each case and into the next one by default. 
	- Body of each case must contain at least one executable statement. 
	- Case-sensitive -- won't match "a" and "A"
		○ Prevents accidental fall through
		○ To make a switch w/ single case to match "a" and "A", form a compound case separated w/ commas

	
	
	
**to explicitly fall through, use the "fallthrough" keyword**


Swift's switch statements are exhaustive, meaning that it does not allow empty case statements**




Interval Matching

Values in switch cases can be checked for their inclusion in an interval. 

This example uses # intervals to provide count for #'s of any size:

	
	
	



Compound Cases

Multiple switch cases sharing the same body can be combined by writing several patterns after "case"
	- Comma in between each of the patterns
	- If any of the patterns match, then the case is considered matched


	
	
	

Control Transfer Statements

Change the order in which your code is executed by transferring control from one part of the program to another. 

Swift has (5) control transfer statements:
	-  continue
	-  break
	-  fallthrough
	-  return
	-  throw


Continue

Tells a loop to stop what it is doing and start again at the beginning of the next iteration through the loop. 
	- Says "I am done w/ current loop iteration" w/o leaving the loops altogether

	
	
		○ When a vowel is found, the "continue" keyword skips to next iteration so non-vowels can continue being appended to the empty string in puzzleOutput.
	
	
Break

Ends execution of entire control flow statement immediately

	- In a loop statement, "break" ends loop's exe immediately and transfer control to the code after loop's closing brace. 

	- In a switch statement, "break" causes to end exe immediately and transfer control to the code following the switch statement (like in a loop statement)
		○ Helpful when needing to ignore or match a case
			§ Place "break" as body of case to ignore
			§ Place "break" as inner statement when match is found to exit switch

	




Fallthrough

In Swift, switch statements do not fall through to the bottom of each case and into the next one. 
	- Execution is completed as soon as matching case found
		○ Conversely, C requires a "break" statement to prevent fallthrough

If need C-style fallthrough behavior, can insert "fallthrough" keyword

	
	
	
	


Early Exit

A "guard" statement, like an if-statement, executes statements depending on the Boolean of an expression.
	- Can use "guard" to require that a condition must be true in order for the code after the "guard" statement to be executed. 
	- Unlike an if-statement, "guard" always has an "else" clause


	
	
	
	- If the guard's condition is met, code execution continues after the guard's closing brace.
		○ Any vars or const assigned values using optional binding as part of the condition are available for the rest of the code block the guard statement appears in
	- If condition is not met, the code inside the else branch is executed
		○ The else branch must transfer control to exit the code block in which the guard statement appears.
			§ Can do this with "return", "break", "continue", or "throw"
			§ Or can call a function or method that doesn't return IE fatalError(_:file:line:)
	









# Functions 
Sat., 9/21/2019







Functions are self-contained chunks of code that perform a specific task. Swift's unified function syntax is flexible enough to express anything from simple C-style function w/ no parameter names to complex objective-C style method w/ names and argument labels for each parameter.

	- Every function has a type in Swift -- parameter types and return type
	
	- Makes it easy to pass functions as parameters to other functions
		○ Return functions from functions too
		
	- Functions can be written w/in other functions to encapsulate useful functionality w/in a nested function scope



Defining and Calling Functions

When defining a function, can define (1) or more named, typed values that the function takes as input AKA parameters

Can also define what type the function will pass back as output AKA return type

Every function has a function name describing the task the function performs. 
	- "call" to function using its name and passing the appropriate arguments for parameters it accepts -- arguments must always match parameter list

	- Define function w/ "func" keyword followed by header declaration

	
	
	- Function greet() takes a String parameter called "person" and returns -> a String

		
	
	
	- Because function returns a String value, greet() can be wrapped in a call to print()

	- To make body of function shorter, can combine message creation and the return statement into (1) line:

		
	


Function Parameters and Return Values

Parameters and return values are extremely flexible in Swift. Can define anything from simply utility function w/ single unnamed parameter to a complex function w/ expressive parameter names and different parameter options.



Functions w/o Parameters

Functions aren't required to have input parameters. Example below always returns the same String message whenever it is called:

	
	
	

Function w/ Multiple Parameters

Functions can have multiple input parameters, separated by commas, in a functions header declaration.

	
	

Functions w/o Return Types

Functions are not required to have return types. 

	
	
	
	- Functions w/o a specified return type default to a return type of "Void" implicitly 

	- Can ignore return value of function when it is called:

		○ 
	



Function Argument Labels and Parameter Names

Each function parameter has both an argument label and parameter name. 

	
	
	- All parameters must have unique names



Specifying Argument Labels

You write an argument label before the parameter name, separated by a space:

	
	
	
	


	- The use of argument labels can allow a function to be called in an expressive, sentence-like manner while still providing a function body that is readable and clear in intent


Omitting Argument Labels

If you don't want an argument label for a parameter, write an underscore _ instead of an explicit argument label

	
	
	
	
	
Default Parameter Values

Can define a default value for any parameter in a function by assigning a value to the parameter after that parameter's value
	- If default value defined, can omit parameter when calling the function

	
	
	- Place parameters w/o default values first in parameter list prior to the default values
		○ Parameters that don't have default values are typically more important to the function's meaning





Nested Functions

All functions so far have been examples of global functions defined at a global scope
	- Can also define functions w/in bodies of other functions == nested functions

	- Nested functions are hidden from outside world by default, but can be called locally from w/in function it is nested
		○ Enclosing function can also return one of its nested functions to allow nested function to be used in another scope

	
	
    
    
    
    
    
    
    
    
# Classes and Structs
 Sat., 9/21/2019
    
    
    Structures and classes are general-purpose, flexible constructs that become the building blocks of your program's code.
	- Define properties and methods to add functionality

	- Swift doesn't require you to create separate interface and implementation files for custom structures and classes.
		○ Define in a single file, and the external interface to that class or structure is automatically made available for other code to use

An instance of a class is traditionally known as an object. However, classes and structures are more closer in functionality than other languages
	- Most of the functionality described in this chapter applies to instances of BOTH class or structure type
	- Because of this, the term "instance" is more generally used


Comparing Structures and Classes

Both structures and classes in Swift:
	- Define properties to store values
	- Define methods to provide functionality
	- Define subscripts to provide access to their values using subscript syntax
	- Define initializers to set up their initial state
	- Be extended to expand functionality beyond default implementation
	- Conform to protocols to provide standard functionality of a certain kind

Classes

	- Inheritance enables one class to inherit characteristics of another
	- Type casting enables you to check and interpret the type of a class instance at runtime
	- Deinitializers enable an instance of a class to free up any resources it has assigned
	- Reference counting allows more than one reference to a class instance

The additional capabilities that classes support come at the cost of increased complexity. 
	- General guideline, prefer structures because they're easier to reason about
	- Use classes when they're appropriate or necessary
		○ Most custom data types defined will be structures and enumerations



Definition Syntax

Structures and classes have similar definition syntax.
	- Introduce structures with "struct" keyword and classes with "class" keyword

	
	
	
	- Whenever define new structure or class, you define a new Swift type. 
		○ Give types UpperCamelCase names to match the capitalization of standard Swift types
		○ Properties and methods get lowerCamelCase names if differentiate from type names


	
	
	
	- Structure called Resolution has two stored properties called "width" and "height"
		○ Const or vars bundled up and stored as part of structure or class
		○ Inferred as Int

	- Class called VideoMode has (4) variable stored properties
		○ "resolution" is initialized with a new Resolution structure instance
			§ Infers a property type of Resolution
		○ The rest are inferred data types


Structure and Class Instances

Syntax for creating instances is very similar for both structures and classes

	
	
	- Both use initializer syntax for new instances
	- Creates instances w/ any properties initialized to their default values


Accessing Properties

Can access properties of an instance using dot syntax, writing the property name immediately after the instance name separated by a period (.)

	
	
	- Can reach into subproperties like the "width" property in the "resolution" property of a VideoMode

	
	
	- Can also use dot syntax to assign new value to a var property

	
	
	

Structures and Enumerations Are Value Types 
(ignoring enumerations)

A value type is a type whose value is copied when it's assigned to a var or const or when it’s passed to a function.

All of the basic types in Swift IE Int, Double, Booleans, Strings, arrays, and dictionaries are value types
	- Implemented as structures behind the scenes


All structures are value types in Swift
	- Any structure instances created and any value types they have as properties are always copied when they're passed around in your code


**Collections defined by the standard library like arrays, dictionaries, and strings use an optimization to reduce the performance cost of copying. 
	- Instead of making a copy immediately, collections share the memory where elements are stored b/w original instance and any copies. 
	- If (1) of the copies is modified, elements are copied just before modification 
	- Behavior in code is always as if a copy took place immediately **

	
		○ Declared const called "hd" and sets Resolution instance initialized w/ width and height pixels
		○ Var "cinema" is declared and set to current value of "hd"
			§ Because Resolution is a structure, a copy of the instance is made and the new copy is assigned to "cinema"
		○ Although "hd" and "cinema" have the same width and height, they are (2) separate and different instances
			§ Amend the width of "cinema" 
			
	
			§ Width property of original "hd" instance retains old value
			
			
				□ When "cinema" was given current value of "hd" the values stored in "hd" were copied into new "cinema" instance
				□ (2) completely separate instances containing the same numeric values
			
			
	
			



Classes Are Reference Types

Unlike value types, reference types are not copied when they are assigned to a var or const, or when passed to a function
	- Rather than copy, a reference to the same existing instance is used



	- Example above declares new constant called tenEighty and sets it to refer to a new instance of the VideoMode class.


	- tenEighty is assigned to a new constant called alsoTenEighty -- frame rate is modified
	- Because classes are reference types, both actually refer to the same VideoMode instance.
		○ Just two different names for a same single instance:

	
	
	- The example shows that reference types can be harder to reason about
	- In contrast, value types (like structures) are easier to reason about since all of the code interacts w/ the same value is close together in the source files while reference types can be far apart in your program's code


Identity Operators

Because classes are reference types, multiple constants and vars may refer to the same single instance of a class behind the scenes
	- The same is not true for structures/enums because they are always copied when they are assigned to a const or var, or passed to a function

	- Sometimes useful to find out whether two const or vars refer to exactly the same instance of a class
		○ Identical to ===
		○ Not identical to !==
	- Use these ops to check whether two const/vars refer to the same single instance
	- Does not consider equivalency in value like the == or !=
	- Identical means that two const or vars refer to exactly the same class instance



Pointers

A Swift constant or variable that refers to an instance of some reference type is similar to a pointer in C, but is not a direct pointer to an address in memory (no asterisk * req)
	- These references are defined like any other const or var in Swift










# Properties 

Tues., 10/8/2019





Properties associate values w/ a particular class, structure, or enum. 
	- Stored Prop: store const or var values as part of an instance
		○ Only provided by classes and structs
	- Computed Prop: calculate, rather than store, a value
		○ Provided by classes, structs, and enums

Stored and computed properties are usually associated w/ instances of a particular type
	- However, can also be associated w/ a type itself == type properties

Can also define property observers to monitor changes in a property's value, which can respond to w/ custom actions. 
	- Can be added to stored properties you define yourself, and also properties that a subclass inherits from its superclass
	- Can also use a property wrapper to reuse code in getter/setter of multiple properties


Stored Properties

A constant or variable that is stored as part of an instance of a particular class or structure. Can be either:
	- Variable stored properties ("var" keyword)
	- Constant stored properties ("let" keyword)

Can provide default value for stored property as part of its definition, or can set and modify initial value during initialization.



	- FixedLengthRange structure above range length cannot be changed after it is created
		○ Therefore, length is a const property


Stored Properties of Const Structure Instances

If create an instance of a structure and assign to a constant, you cannot modify the instance's properties, even if they were declared as variable properties:



	- This behavior is due to structures being value types.
		○ When instance of a value type is marked const, so are all of its properties
	- The same is not true for classes which are reference types
		○ If assign an instance of a reference type to a const, can still change  instance's variable properties


Lazy Stored Properties

A lazy stored property is a property whose initial value cannot be calculated until the first time it is used. 
	- Indicate lazy stored property w/ keyword "lazy" modifier at declaration

**Must always declare a lazy property as a variable ("var") b/c its initial value might not be retrieved until after instance initialization completes. **
	- Const properties must always have a value before initialization completes, and cannot be declared as lazy

Lazy properties are useful when initial value for a property is dependent on outside factors whose values are not known until after an instance's initialization is complete.
	- Useful when initial value for a property req complex or computationally expensive setup that should not be performed unless/until needed


	
	
	- DataManager class has stored property called "data" initialized w/ new, empty array of String values
		○ Purpose of class is to manage and provide access to array of String data
		○ Ability to import data from a file
			§ This is provided by the DataImporter class
			§ Assumed to take nontrivial time to initialize
				□ Might be because DataImporter instance needs to open a file and read its contents into memory when DataImporter instance is initialized
		○ It is possible for a DataManager instance to manage its data w/o ever importing data from a file -- no need to create new DataImporter instance when DataManager itself is created
			§ Makes more sense to create DataImporter instance if and when it is first used
			§ Since marked with "lazy" modifier, DataImporter instnace for the importer property is only created when the importer property is first accessed



**If property marked w/ lazy modifier is accessed by multiple threads simultaneously and property has not been initialized, there is no guarantee that the property will be initialized only once**


Stored Properties and Instance Variables

In addition to properties, you can use instance variables as a backing store for the values stored in a property.

Swift unifies these concepts into a single property declaration. 
	- Swift property does not have corresponding instance variable
	- Backing stored for a property is not accessed directly

This approach avoids confusion about how the value is accessed in different contexts and simplifies property's declaration into single, definitive statement. 
	- Information about the property (name, type, and mem. Management) defined in a single location as part of the type's definition.



Property Observers

Property Observers observe and respond to changes in a property's value. 
	- Called every time a property's value is set -- even if new value is the same as the property's current value
	- Can add property observers to any stored properties defined (except for "lazy" properties)
		○ Can also add property observers to any inherited property (stored or computed) by overriding the property within a subclass.
		○ Do not need to define property observers for nonoverridden computed properties
			§ Can observe and respond to changes to their value in the computed property's setter. 


Have the option to define either or both of these observers on a property:
	- "willSet" is called just before the value is stored
		○ Passed the new property value as a constant parameter
		○ Can specify name for this parameter as part of willSet implementation
		○ If don’t write the parameter name and parentheses w/in implementation, parameter is made available w/ a default value of newValue
	- "didSet" called immediately after the new value is stored
		○ Similarly passed a constant parameter containing the old property value
		○ Can name the parameter or use the default parameter name of oldValue
		○ If assign a value to a property w/in its own didSet observer, new value assigned replaces the one that was just set

**willSet and didSet of superclass properties are called when a property is set in a subclass initializer, after superclass initializer is called. **



	
	- willSet and didSet observers for totalSteps is called whenever the property is assigned a new value
		○ This is true even if the new value is the same as the current value

	- willSet observer uses the custom parameter name of newTotalSteps for the upcoming new value

	-  didSet observer is called after value of totalSteps is updated
		○ Compares new value of totalSteps against the old value. If total # of steps has increased, message is printed
		○ didSet does not provide custom parameter name for the old value, and the default name of oldValue is used instead.

**if you pass a property that has observers to a function as an in-out parameter, the willSet and didSet observers are always called. **
	- This is due to the "copy-in, copy-out" memory model for in-out parameters:
		○ The value is always written back to the property at the end of the function



Property Wrappers

Property Wrapper adds layer of separation between code that manages how a property is stored and code that defines a property.

	- Code is written every time for thread-safety checks or for storing underlying data in a database
	- Instead, can write property management code when defining a property wrapper and reuse management code by applying to multiple properties

To define a property wrapper, create a structure, enumeration or class that defines a wrappedValue property



	- In the TwelveOrLess structure above, it ensures that the value it wraps always contains a number <= 12. If you ask to store a larger number, it stores 12 instead.
		○ Setter ensures new values are less than 12, getter returns stored value

	- Declaring "number" as private ensures it is only used with implementation of the structure TwelveOrLess. 






You could write code that uses the behavior of the property wrapper, without taking advantage of the special attribute syntax
	- Here's a version of the SmallRectangle from the previous example that wraps its properties in the TwelveOrLess structure explicitly instead of writing @TwelveOrLess as an attribute:



	- The _height and _width properties store an instance of the property wrapper TwelveOrLess
	- Getter and setter for height and width wrap access to the wrappedValue property.



Setting Initial Values for Wrapped Properties

Earlier examples set the initial values for the wrapped property by giving "number" an initial value in the definition of TwelveOrLess.
	- Code that uses this wrapper cannot specify a different initial value for a property that is wrapped by TwelveOrLess
	- To support setting an initial value or other customization, property wrapper needs to add an initializer 
		○ Below example uses an expanded version of TwelveOrLess called SmallNumber that defines initializers that set the wrapped and maximum value:



	- Includes (3) initializers:
		○ Init()
			§ When you apply a wrapper to a property and do not specify an initial value, Swift uses init() initializer to set up the wrapper:
			§ 
		
				□ Instances of SmallNumber that wrap height and width are created by calling SmallNumber()
				□ Code inside initializer sets initial wrapped value and initial max value, using default values of zero and twelve
		
		
		
		○ Init(wrappedValue:)
			§ When you specify an initial value for the property, Swift uses the init(:wrappedValue: ) initializer
			§ 
			§ 
			
				□ When you write " = 1" on a property with a wrapper, it's translated into a call to the "init(wrappedValue:maximum: )" initializer 
				□ Instances of SmallNumber that wrap height and width are creating by calling SmallNumber(wrappedValue: 1)
				□ Uses wrapped value and default max value of 12
			
			
			
			
		○ Init(wrappedValue:maximum:)
			§ When arguments are provided, Swift uses the initializer that accepts those arguments to set up the wrapper
			§ If maximum and minimum values provided, Swift uses the init(wrappedValue:maximum: ) initializer
			§ 
			§ 
			
				□ Instance of SmallNumber that wraps height is created by calling SmallNumber(wrappedValue: 2, maximum: 5)
				□ Instance that wraps width is created by calling SmallNumber(wrappedValue: 3, maximum: 4)
			
			
When you include property wrapper arguments, can also specify an initial value using assignment. Swift treats the assignment like a wrappedValue argument and uses the initializer that accepts provided arguments:

	
	




Projecting a Value from a Property Wrapper


Additional to the wrapped value, a property wrapper can expose additional functionality by defining a projected value 
	- IE wrapper that manages access to a database can expose a "flushDatabaseConnection()" method on its projected value.
	- Name of projected value is the same as the wrapped value except it begins with a $ sign
		○ Since cannot define properties that start w/ $, the projected value never interferes w/ defined properties
		○ The example below adds projected value to keep track of whether the property wrapper adjusted the new value for the property before storing new value:
		
		 
		
		
	- A property wrapper can return a value of any type as its projected value
		○ In the above example, the property wrapper only exposes one piece of info: a Boolean stating whether the number was adjusted
		○ A wrapper that needs to expose more info can return an instance of some other data type
			§ Or can return "self" to expose instance of the wrapper as its projected value
		
		
		
		
		
Property wrapper syntax is just syntactic sugar for a property with a getter/setter, accessing height and width behaves the same as accessing any other property.




Global and Local Variables

The capabilities described above for computing and observing properties are also available to global and local variables.
	- Global and local vars encountered earlier have always been stored vars
	- Like stored properties, allow for value of certain type to be set and retrieved

Can defined computed vars and define observers for stored vars. Computed vars calculate their value, rather than storing it, and they are written in the same way as computed properties.

**global and local vars are always computed lazily, similar to lazy stored properties**
	- Unlike lazy stored properties, global const and vars do not need to be marked w/ "lazy" modifier
	- Local const and vars are never computed lazily



Type Properties













# Project Timeline

 

//Weekly itineraries do not account for  Engineering Entrepreneurship assignments/final project! (Tentative)*** 

 

 

//NEED INFO ON ASSEMBLY FINAL PROJECT 

 

 

 

 

Week of: 

 

 

 

Mon, 9/2 (Labor Day – No work or school) 

*Tues. 9/3 cancelled – Dorian* 

 

*Stats – Test 1, Thursday 9/5 (All HW due) 

 

*Assembly – HW 1 Due, Thursday 9/5 

 

 

 

 

Module 1: 

 

Introduction to iOS 11, Xcode 9 and Swift 4 (1:21:58) 

Lecture 1 Slides (9 pg) 

Read 1: Intro to Swift (7 pg)




Reading assignment spans two weeks due to amount of reading materials listed in the 7-pg doc "Read 1: Intro to Swift" per course professor. Currently the readings contain the basics of Swift and its components relative to objective-C as well as facets that were improved upon by Swift such as advanced types like tuples. Course video and slides introduce students to the basic layers of an iOS application. The (4) layers consist of, from a top-down perspective, Cocoa Touch, Media, Core Services, and Core OS. Cocoa Touch is the general UI, image picker, map kit, and view hierarchy control. Media includes all media extensions for core audio, JPG, PDF, core animation. Core Services include SQLite, networking, collections and media. Finally, the core OS is as close to the hardware we can get. Includes the OSX kernel, security, Mach 3.0 file system, and power management. Based mostly in UNIX and written in C, but as a class we will only be discussing the core services layer and the Cocoa Touch layer. The main focus of the application development will be to implement a game called "Concentration" in the Xcode environment. The rest of lecture includes demoing the Xcode environment. 






 

Module 2: 

 

MVC (1:11:59) 

Lecture 2 Slides (33 pg) 

Programming Project 1: concentration (6 pg) 

 

 

 

 

 

 

 

 

Mon, 9/9 

 

*OOP – Activity 3: JavaFX Tut 4 Due, Monday 9/9 

Quiz 3: Sec 1 Quiz Due, Tuesday 9/10 

Review Exam, JF Final Due, Saturday 9/14 

 

 

 

 

(Mod. 2 Continued) 

 

Friday Session 1: Debugging and Xcode Tips and Tricks (32:36) 

 

Module 3: 

 

Swift Programming Language (1:23:37) 

Lecture 3 Slides (68 pg) 

Reading 2: Intro to Swift (8 pg) 

 

 

 

 

 

 

 

 

 

Mon, 9/16 

 

*OOP – Activity 4: 6-1 Practice Due, Monday 9/16 

Quiz 4: Classes Due, Tuesday 9/17 

 

*Assembly – HW 2 Due, Thursday 9/19 

 

 

 

 

 

Module 4 

 

More Swift (1:27:28) 

Lecture 4 Slides (68 pg) 

Programming Project 2: Set (9 pg) 

 

Module 5 

 

Drawing (1:27:08) 

 

 

 

 

 

 

 

Mon, 9/23 

 

*OOP – Activity 5: 6-2 Practice Due, Monday 9/23 

Quiz 5: Sec 6 Quiz Due, Tuesday 9/24 

 

*Assembly – Test 1, Thursday 9/26 

 

*OOP – GUI Program Alpha Due, Saturday 9/28 

 

 

 

 

(Mod. 5 continued) 

 

Lecture 5 Slides (43 pg) 

Reading 3: Finishing Off Swift (4 pg) 

 

Module 6 

 

Multitouch (1:25:23) 

 

 

 

 

 

 

 

 

Mon, 9/30 

 

*Stats – Test 2, Thursday 10/3 (All HW due) 

 

*OOP – Issue 1 Due,  Saturday 10/5 

 

 

 

 

(Mod. 6 continued) 

 

Lecture 6 Slides (21 pg) 

Programming Project 3: Graphical Set (6 pg) 

 

Module 7 

 

Multiple MVCs, Timer, and Animation (1:17:00) 

Lecture 7 Slides (71 pg) 

 

 

 

 

 

 

 

 

 

Mon, 10/7 

 

*Assembly – HW 3 Due, Tuesday 10/8 

 

*OOP – Issue 2 Due, Saturday 10/12 

 

 

 

 

 

Module 8 

 

Animation (1:27:01) 

Lecture 8 Slides (28 pg) 

Programming Project 4: Animated Set (11 pg) 

Friday Session 2: Github and Source Control Workflow (24:51) 

 

 

 

 

 

 

 

 

 

Mon, 10/14 

 

*Assembly – HW 4 Due, Tuesday 10/15 

 

*OOP – Quiz 8: Sec 2 Quiz Due, Tuesday 10/15 

Issue 3 Due, Saturday 10/19 

 

 

 

 

 

Module 9 

 

View Controller Lifecycle and Scroll View (1:14:09) 

Lecture 9 Slides (46 pg) 

 

 

Module 10 

 

Multithreading and Autolayout (1:17:21) 

Lecture 10 Slides (28 pg) 

Friday Session 3: Instruments (29:08) 

 

 

 

 

 

 

 

 

Mon, 10/21 

 

*OOP – Issue 4 Due, Saturday 10/26 

 

 

 

 

Module 11 

 

Drag and Drop, Table View, and Collection View (1:20:03) 

Lecture 11 Slides (74 pg) 

 

 

Module 12 

 

Drag and Drop, Table View, Collection View, and and Text Field (1:14:08) 

Lecture 12 Slides (9 pg) 

 

 

 

 

 

 

 

 

 

 

 

Mon, 10/28 

 

*Stats – Test 3, Tuesday 10/29 

 

*OOP – GUI Program Beta Due, Saturday 11/2 

Issue 5 Due, Saturday 11/2 

 

 

 

 

(Mod. 12 continued) 

 

Programming Project 5: Image Gallery (9 pg) 

 

 

Module 13 

 

Persistence and Documents (1:11:37) 

Lecture 13  Slides (59 pg) 

 

 

 

 

 

 

 

 

 

 

Mon, 11/4 

 

*OOP – Quiz 11: Sec 3 Quiz Due, Tuesday 11/5 

 

*Assembly – Test 2, Tuesday 11/5 

HW 5 Due, Thursday 11/7 

 

*OOP – Issue 6 Due, Saturday 11/9 

 

 

 

 

 

Module 14 

 

Persistence and Documents Demo (1:19:59) 

Lecture 14 Slides (14 pg) 

Programming Project 6: Persistent Image Gallery (6 pg) 

 

 

Module 15 

 

Alerts, Notifications, Application Lifecycle (1:20:42) 

Lecture 15 Slides (52 pg) 

 

 

 

 

 

 

 

Mon, 11/11 

 

 

 

 

Module 16 

 

More Segues (1:15:55) 

Lecture 16 Slides (38 pg) 

 

 

Module 17 

 

Core Motion and Camera (1:15:42) 

Lecture 17 Slides (28 pg) 

 

 

 

 

 

 

 

 

 

Mon, 11/18 

 

*Assembly – HW 6 Due, Tuesday 11/19 

 

*OOP – Issue 7 Due, Saturday 11/23 

 

 

 

 

 

 

//Finishing touches on personal project, if applicable 

 

 

 

 

 

 

Mon, 11/25 

 

*Thanksgiving break 11/26 - 11/29 (then weekend) 

 

*OOP – Quiz 13: Sec 4 Quiz Due, Tuesday 11/26 

Issue 8 Due, Saturday 11/30 

 

 

 

 

 

//Finishing touches on personal project, if applicable 

 

 

 

 

Mon, 12/2 

 

*OOP – Activity 14: JavaFX Tut 6 Due, Monday 12/2 

 

*Assembly – Test 3, Tuesday 12/3 

 

*stats – Test 4, Tuesday 12/3 

 

*OOP – Issue 9 Due, Saturday 12/7 

GUI Program Release Candidate Due, Saturday 12/7 

 

 

 

 

//Finishing touches on personal project, if applicable 

 

 

 

 

Mon, 12/9 

 

Activity 15: 4-1 Practice Due, Monday 12/9 @ 11:59 PM 

PERSONAL PROJECT DUE @ 11:59 pm 

PORTFOLIO UPDATE DUE @ 11:59 pm 

 

*Assembly – FINAL EXAM, Tuesday 12/10 (3:00 PM – 5:15 PM) --------> OPTIONAL IF SATISFIED WITH ALL THREE EXAM TEST SCORES (Averaged and entered as final exam grade) 

 

 

*Stats – FINAL EXAM, Tuesday 12/10 (10:00 AM – 12:15 PM) 

 

*OOP – Quiz 15: Sec 5 Quiz Due, Tuesday 12/10 

JP Midterm Exam Due, Thursday 12/12 

Final Report Due, Thursday 12/12 

Oracle 1Z0-815 Cert, Monday 12/16 (optional) 

 

 

 
