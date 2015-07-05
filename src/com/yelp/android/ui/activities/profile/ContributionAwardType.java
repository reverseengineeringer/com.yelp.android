package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.serializable.User;
import java.util.EnumSet;
import java.util.LinkedHashSet;
import java.util.Set;

 enum ContributionAwardType
{
  public static Set<ContributionAwardType> AWARDS = EnumSet.of(YEARS_ELITE, new ContributionAwardType[] { FIRSTS, TIPS_OF_THE_DAY, KING, BARONIES, DUKEDOMS, REGULARS, BADGES, COMPLIMENTS, TIPS });
  public static Set<ContributionAwardType> CONTRIBUTIONS_AND_AWARDS;
  final boolean hasBadgeCount;
  final int iconRes;
  final EventIri iri;
  final boolean privateStat;
  final int titleRes;
  
  static
  {
    FIRSTS = new ContributionAwardType.2("FIRSTS", 1, EventIri.ProfileAward_Firsts, 2131165840, 2130837982);
    TIPS_OF_THE_DAY = new ContributionAwardType.3("TIPS_OF_THE_DAY", 2, EventIri.ProfileAward_TipOfTheDay, 2131166720, 2130838501);
    KING = new ContributionAwardType.4("KING", 3, EventIri.ProfileAward_King, 2131165983, 2130838279);
    BARONIES = new ContributionAwardType.5("BARONIES", 4, EventIri.ProfileAward_Baron, 2131165392, 2130838268);
    DUKEDOMS = new ContributionAwardType.6("DUKEDOMS", 5, EventIri.ProfileAward_Duke, 2131165726, 2130838275);
    REGULARS = new ContributionAwardType.7("REGULARS", 6, EventIri.ProfileAward_Regular, 2131166413, 2130838282);
    BADGES = new ContributionAwardType.8("BADGES", 7, EventIri.ProfileAward_Badge, 2131165389, 2130838267);
    COMPLIMENTS = new ContributionAwardType.9("COMPLIMENTS", 8, EventIri.ProfileAward_Compliments, 2131165636, 2130838272);
    REVIEW_DRAFTS = new ContributionAwardType.10("REVIEW_DRAFTS", 9, EventIri.ProfileContributions_ReviewDrafts, 2131165725, 2130838274, true, false);
    REVIEWS = new ContributionAwardType.11("REVIEWS", 10, EventIri.ProfileContributions_Reviews, 2131166477, 2130838284);
    TIPS = new ContributionAwardType.12("TIPS", 11, EventIri.ProfileContributions_Tips, 2131166726, 2130838285);
    LOCAL_MEDIA = new ContributionAwardType.13("LOCAL_MEDIA", 12, EventIri.ProfileContributions_BusinessPhotos, 2131166331, 2130838270);
    CHECK_INS = new ContributionAwardType.14("CHECK_INS", 13, EventIri.ProfileContributions_CheckIns, 2131165504, 2130838271, true, false);
    DEALS_AND_OFFERS = new ContributionAwardType.15("DEALS_AND_OFFERS", 14, EventIri.ProfileContributions_Deals, 2131166139, 2130838273, true, false);
    BOOKMARKS = new ContributionAwardType.16("BOOKMARKS", 15, EventIri.ProfileContributions_Bookmarks, 2131165415, 2130838269);
    MESSAGES = new ContributionAwardType.17("MESSAGES", 16, EventIri.ProfileMessagingInbox, 2131166088, 2130838280, false, true);
    EVENTS = new ContributionAwardType.18("EVENTS", 17, EventIri.ProfileEvents, 2131165793, 2130838276);
    $VALUES = new ContributionAwardType[] { YEARS_ELITE, FIRSTS, TIPS_OF_THE_DAY, KING, BARONIES, DUKEDOMS, REGULARS, BADGES, COMPLIMENTS, REVIEW_DRAFTS, REVIEWS, TIPS, LOCAL_MEDIA, CHECK_INS, DEALS_AND_OFFERS, BOOKMARKS, MESSAGES, EVENTS };
    CONTRIBUTIONS_AND_AWARDS = makeSet(new ContributionAwardType[] { YEARS_ELITE, DEALS_AND_OFFERS, BOOKMARKS, COMPLIMENTS, MESSAGES, EVENTS, REVIEW_DRAFTS, REVIEWS, TIPS, LOCAL_MEDIA, CHECK_INS, FIRSTS, TIPS_OF_THE_DAY, KING, BARONIES, DUKEDOMS, REGULARS, BADGES });
  }
  
  private ContributionAwardType(EventIri paramEventIri, int paramInt1, int paramInt2)
  {
    this(paramEventIri, paramInt1, paramInt2, false, false);
  }
  
  private ContributionAwardType(EventIri paramEventIri, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    titleRes = paramInt1;
    iconRes = paramInt2;
    iri = paramEventIri;
    privateStat = paramBoolean1;
    hasBadgeCount = paramBoolean2;
  }
  
  private static Set<ContributionAwardType> makeSet(ContributionAwardType[] paramArrayOfContributionAwardType)
  {
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    int j = paramArrayOfContributionAwardType.length;
    int i = 0;
    while (i < j)
    {
      localLinkedHashSet.add(paramArrayOfContributionAwardType[i]);
      i += 1;
    }
    return localLinkedHashSet;
  }
  
  public int getTitleRes(User paramUser)
  {
    return titleRes;
  }
  
  abstract int getValue(User paramUser);
  
  abstract Intent getViewIntent(Context paramContext, User paramUser);
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ContributionAwardType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */