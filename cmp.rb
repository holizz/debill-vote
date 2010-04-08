#!/usr/bin/env ruby


mps = {}
open('mps').read.split("\n").each {|line| a=line.split("\t"); mps[a[0]] = a[1] }

ayes = open('ayes').read.split("\n")
noes = open('noes').read.split("\n")

ayes.each do |mp|
  if mps.has_key? mp and mps[mp]
    party=mps[mp]
  else
    party='???'
  end
  puts mp+"\t"+party
end
