"""Minimal test to verify pytest setup."""


def test_basic_assertion():
    """Test that pytest is working with a basic assertion."""
    assert 1 + 1 == 2


def test_string_operations():
    """Test basic string operations."""
    text = "Hello from phrasebook!"
    assert "phrasebook" in text
    assert text.startswith("Hello")


def test_list_operations():
    """Test basic list operations."""
    items = [1, 2, 3]
    assert len(items) == 3
    assert sum(items) == 6
