# THE SOURDOUGH HOUSE — build state

Skill: 10k-websites (extracted to `skill/10k-websites/`, read in full).
Handover text extracted from the supplied PDF: `notes/handover-extracted.txt`.

## Where the build stands

- Phases 1 to 5: complete per handover. Design package is in the handover text.
- Phase 6: step 1 done (preflight). Step 2 produced job
  `c21f6b4c-d706-4eae-b845-07c36e3fd2d2`, which the server ran on
  `nano_banana_2` instead of the requested `nano_banana_pro`. Confirmed by
  re-reading the job. Unapproved, uninspected: treat as non-existent.
- Steps 3 onward: not done. Video model not yet presented.

## Phase 1 scan on this machine (remote cloud container, not a local machine)

| Item | State |
|---|---|
| Higgsfield connector | connected, 1210 credits, Plus plan |
| ffmpeg + ffprobe | installed here via apt, libx264 present |
| Node.js | v22.22.2, npx 10.9.7 |
| Chromium | present at /opt/pw-browsers (headless self-test route) |
| Hostinger tools | not connected |

## The environment finding

Outbound network here is a narrow org allowlist. Verified by direct request:

- Higgsfield asset CDN (`d8j0ntlcm91z4.cloudfront.net`): 403 at the egress
  proxy. Generated files cannot be downloaded onto this machine. This is the
  same blocker that moved the build off the mobile app.
- `api.hostinger.com` / `developers.hostinger.com`: blocked. The Hostinger
  connector is a local npx server calling that API, so Phase 10 deploy cannot
  complete from here.
- Reachable: npm registry, PyPI, fonts.googleapis.com, github.com.

## The verified workaround, and its limit

`mcp__Higgsfield__sandbox_exec` is a Higgsfield cloud Linux sandbox with
ffmpeg, ImageMagick, Playwright and CDN access. Verified: it downloaded the
existing frame (HTTP 200, 6559474 bytes, 2752x1536) and has libx264.

So generation, inspection and the ffmpeg work of Phase 7 can all run there,
with review-size frames pulled back for inspection.

What it does not solve: moving the finished multi-MB scrub video onto this
machine so it can be built into the site and shipped, and reaching Hostinger
to deploy. Those two walls stand.
