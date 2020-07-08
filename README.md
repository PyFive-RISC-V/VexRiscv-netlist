## Dependencies

On Ubuntu 14:

```scala
# JAVA JDK (at least version 8)
sudo add-apt-repository -y ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install openjdk-8-jdk -y
sudo update-alternatives --config java
sudo update-alternatives --config javac

# Install SBT - https://www.scala-sbt.org/
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
sudo apt-get update
sudo apt-get install sbt
```

## Generate the netlist 

```
sbt "runMain pyfive.PyFive"
```

## Memories

Ram blackboxes : 
- Ram_1w_1rs => regfile + i$/d$ data
- Ram_1w_1ra => i$/d$ tags
