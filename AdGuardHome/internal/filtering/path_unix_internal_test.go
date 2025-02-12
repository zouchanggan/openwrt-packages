//go:build unix

package filtering

import (
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestPathInAnyDir(t *testing.T) {
	t.Parallel()

	const (
		filePath      = "/path/to/file.txt"
		filePathGlob  = "/path/to/*"
		otherFilePath = "/otherpath/to/file.txt"
	)

	testCases := []struct {
		want     assert.BoolAssertionFunc
		filePath string
		name     string
		globs    []string
	}{{
		want:     assert.False,
		filePath: filePath,
		name:     "nil_pats",
		globs:    nil,
	}, {
		want:     assert.True,
		filePath: filePath,
		name:     "match",
		globs: []string{
			filePath,
			otherFilePath,
		},
	}, {
		want:     assert.False,
		filePath: filePath,
		name:     "no_match",
		globs: []string{
			otherFilePath,
		},
	}, {
		want:     assert.True,
		filePath: filePath,
		name:     "match_star",
		globs: []string{
			filePathGlob,
		},
	}}

	for _, tc := range testCases {
		t.Run(tc.name, func(t *testing.T) {
			t.Parallel()

			tc.want(t, pathMatchesAny(tc.globs, tc.filePath))
		})
	}

	require.True(t, t.Run("panic_on_unabs_file_path", func(t *testing.T) {
		t.Parallel()

		assert.Panics(t, func() {
			_ = pathMatchesAny([]string{"/home/user"}, "../../etc/passwd")
		})
	}))

	require.True(t, t.Run("panic_on_bad_pat", func(t *testing.T) {
		t.Parallel()

		assert.Panics(t, func() {
			_ = pathMatchesAny([]string{`\`}, filePath)
		})
	}))
}
