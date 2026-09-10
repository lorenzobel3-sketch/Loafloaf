# Before this site goes live

The Sourdough House is a real bakery and this site will trade. Everything
below has to be true before it is public. Nothing here is optional.

## Blocking. Do not put the site online until these are done.

- [x] **The film stays, and the footer says so.** The hero film is
      generated rather than shot in the kitchen, and it is staying. The
      footer now carries one plain line saying the imagery is illustrative
      and created digitally. Do not delete that line while any generated
      imagery remains on the page.

- [ ] **Swap the three step pictures for real photographs** when they
      exist: the starter, the dough, the scored loaf. Shoot all three at
      the same window at the same time of day so they match. Once they are
      in, narrow the footer line so it refers to the film alone.

- [ ] **Fill in the settings at the top of the script in `index.html`.**
      There are four, and they are the whole shop:

      - `WHATSAPP_NUMBER` country code first, digits only, no plus, no
        spaces. A Dubai mobile looks like `9715XXXXXXXX`. Once set, the
        reserve button becomes "Reserve on WhatsApp" and the order arrives
        with the quantity, name, email and total already written out.
      - `INSTAGRAM_URL` the full address of the profile.
      - `LOAF_PRICE` in dirhams. Set to AED 35.
      - `STRIPE_LINKS` only when you want card payment. Leave empty and
        orders go by WhatsApp and are paid on collection.

- [ ] **The WhatsApp number on the site is a placeholder.**
      `971501234567` is a dummy, the one used to test the ordering. Every
      order the site takes opens a message to it. Replace it with the real
      number before anyone can reach the site, or orders go to a stranger.

- [ ] **Fill in the two remaining TO FILL boxes**: the weekend delivery
      window, and the trading details in the footer.

- [ ] **Confirm every factual claim.** These were invented and read as
      statements the business is making:
      - the cost breakdown in "What it costs" (AED 4.00 flour, AED 0.25
        water and salt, AED 30.75 time and oven), scaled to your AED 35 and
        still invented
      - the mill is no longer named or placed. The line now reads
        "certified organic stoneground flour", which is confirmed true.
        If you want to name your mill, add it here
      - "never part baked, never frozen, never brought back to life in a
        warmer", which is now one of the three freshness claims
      - baked overnight before each delivery morning, delivered Saturday
        or Sunday
      - two bakes a weekend, and whether that is really your routine
      - keeps four or five days
      - "Batch no. 41" in the hero

- [x] **Delivery, not collection.** Free across Arabian Ranches, Dubai,
      Saturday or Sunday morning, no pick up. The customer picks the
      morning on the order form, and the WhatsApp order carries the day and
      asks for their address.

- [ ] **Fill in the footer.** Trading name, a way to reach you, and your
      company number if you are registered.

- [x] **The flour is certified organic**, confirmed by the owner, so the
      headline "Organic. The way it should be" stands. Keep the
      certificate to hand: organic is a legally protected term wherever the
      loaf is sold, and the claim has to be evidenced, not just true. If
      the mill or the flour ever changes, this line has to be rechecked
      before the next bake goes on sale.

## Before taking money

- [ ] **Paste a Stripe payment link into `STRIPE_LINKS` at the top of the
      script in `index.html`.** Until then the site takes reservations and
      customers pay on collection, which is a perfectly good way to start.

- [ ] **Add the pages a shop needs**: terms, refunds and cancellations, a
      privacy notice covering the name and email the form collects, and
      allergen information. Bread contains wheat and gluten, which is a
      declarable allergen.

## Returns when you have them

- [ ] **The testimonials section was removed.** It held four quotes that I
      wrote. On a trading site those are fabricated reviews, which is
      unlawful in the UAE and most markets. Real quotes from real
      customers, used with their permission, and the section goes straight
      back in.
