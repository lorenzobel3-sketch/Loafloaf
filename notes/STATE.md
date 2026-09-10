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

## Phase 6 progress on this machine

### The model substitution is reproducible

Job `cbe652a7-6c84-474f-9dcf-2169ef6289b4` was submitted to `nano_banana_pro`
and the server ran it on `nano_banana_2`, exactly as the handover reported for
the earlier job. Two for two, so treat it as the server's behaviour, not a
fluke. Image quality has not been the problem in either case.

### Asset inspection route, verified

The CDN is unreachable from this machine, so assets are inspected by way of
the Higgsfield sandbox:

1. Sandbox downloads the asset from the CDN and renders a small review JPEG.
2. Sandbox prints the byte count, an MD5 and the base64.
3. The base64 is written here, decoded, and the MD5 compared before looking.

The MD5 step is not optional. A first attempt at roughly 8.7k base64
characters came back corrupted and failed to decode. Payloads around 2.5 to
4 KB (3.5k to 5.5k base64 characters) have transferred with matching MD5s.
Keep review images at or under about 4 KB, or split them into verified
chunks.

Also verified: S3 (`*.s3.amazonaws.com`) answers from this machine with a real
HTTP 403 rather than a proxy refusal, so that host is reachable even though
both CloudFront asset domains are not.

### Inspection of the first frame, and why it was rejected

Right: on-brand palette, no people or hands, no lettering or trademarks, and
the upper two thirds is one continuous calm stretch of lit plaster and air,
edge to edge, which is where bands 1 to 3 will sit.

Wrong: the camera is close to eye level looking across the room, with the
loaf already large, sharp and near the centre. That is an arrival frame, not
the first frame of a descent, so scrolling down would have nowhere to travel.
Rejected and re-rolled with the camera height stated far more explicitly and
the room clutter cut back. Re-roll job: `b43b7972-a235-4240-ad0f-64ac7a5380e7`.

## Phases 6 to 9: complete

Hero: `kling3_0` in pro mode, 1920x1080, 6.04s, from the third starting
frame. Approved at the video gate after the first take was rejected for
never decelerating into an arrival. The ending now rests, measured: motion
peaks mid-shot and falls to 0.41 against 0.28 at the start.

Assets, all processed and hosted (see `the-sourdough-house/fetch-assets.sh`):
hero-scrub.mp4 4.74MB at crf 21, hero-poster.jpg, hero-ending.jpg, and
three step images graded to the hero's median.

### What the browser self-test caught and what was done

1. Flick test rejected the 400vh hero. Four bands got 48 to 78vh against
   the 80 to 130vh plateau standard; bands 1 and 2 held for 2 and 4 flicks
   and band 1 was skippable at 360px. Hero is now 560vh, ranges respread.
   Now 6, 7, 7, 11 at 120px and nothing skippable.
2. The static-hero gate never committed its state on first run, because
   disableScrub() returned early with scrubOn starting false. Now null.
3. Worst-frame legibility failed every band (1.39 to 2.80 against 3.5:1).
   The footage is a bright sunlit room and light type could not win over
   it. The four-layer system was inverted to dark type on a warm cream
   lift. Now 6.35, 5.30, 5.46, 8.84.
4. Body copy measured 4.29:1 on the panel, under the 4.5 floor.
   --text-secondary moved to #675B4D, now 4.72:1.
5. FAQ rows (28px) and the hold button (42px) were under the 44px touch
   minimum. Fixed under coarse pointer.
6. The three step images loaded at first paint, putting 1.45MB in front of
   a visitor who had not scrolled. Now fetched on approach.

Verified green: no console errors, no sideways scroll at any width, all 13
entrances play with stagger delays retired, dividers draw, hold completes
and eases back on release, form success state works, page complete with the
video blocked, phone and reduced motion both take the static hero and never
request the video.

## What is left

Phase 10 only. Deploy needs a machine that can reach Hostinger, which this
environment's egress policy blocks. Everything else is done.
