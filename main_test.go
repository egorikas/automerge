package main

import (
	"testing"

	"github.com/stretchr/testify/require"
)

func TestReturnTrue(t *testing.T) {
	require.Equal(t, true, ReturnTrue())
}
