use std assert
use ../std-rfc/conversions *

#[test]
def range-into-list [] {
  assert equal (
    1..10 | into list
  ) (
    [ 1 2 3 4 5 6 7 8 9 10 ]
  )
}

#[test]
def string-into-list [] {
  assert equal (
    "foo" | into list
  ) (
    [ foo ]
  )
}

#[test]
def range-stride-into-list [] {
  assert equal (
    0..2..10 | into list
  ) (
    [ 0 2 4 6 8 10 ]
  )
}

#[test]
def null-into-list [] {
  assert equal (
    null | into list | get 0 | describe
  ) (
    "nothing"
  )
}

#[test]
def list-into-list [] {
  assert equal (
    [ foo bar baz ] | into list
  ) (
    [ foo bar baz ]
  )

}
