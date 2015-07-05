.class abstract Lcom/yelp/android/serializable/_YelpBusiness;
.super Ljava/lang/Object;
.source "_YelpBusiness.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAddress1:Ljava/lang/String;

.field protected mAddress2:Ljava/lang/String;

.field protected mAddress3:Ljava/lang/String;

.field protected mAlias:Ljava/lang/String;

.field protected mAlternateNames:Lcom/yelp/android/serializable/AlternateBusinessNames;

.field protected mAttributions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Attribution;",
            ">;"
        }
    .end annotation
.end field

.field protected mAvgRating:F

.field protected mBizOwnerVideo:Lcom/yelp/android/serializable/Video;

.field protected mCallToAction:Lcom/yelp/android/serializable/CallToAction;

.field protected mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;"
        }
    .end annotation
.end field

.field protected mCheckInOffer:Lcom/yelp/android/serializable/Offer;

.field protected mCheckedInFriendCount:I

.field protected mCheckedInFriends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation
.end field

.field protected mCity:Ljava/lang/String;

.field protected mCountry:Ljava/lang/String;

.field protected mCrossStreets:Ljava/lang/String;

.field protected mDateReopening:Ljava/util/Date;

.field protected mDeal:Lcom/yelp/android/serializable/YelpDeal;

.field protected mDialablePhone:Ljava/lang/String;

.field protected mDisplayAddresses:Lcom/yelp/android/serializable/YelpAddresses;

.field protected mDisplayUrl:Ljava/lang/String;

.field protected mFormatMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

.field protected mFriendBookmarkedCount:I

.field protected mFromThisBusiness:Lcom/yelp/android/serializable/FromThisBusiness;

.field protected mGeoAccuracy:F

.field protected mHours:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpHoursPair;",
            ">;"
        }
    .end annotation
.end field

.field protected mId:Ljava/lang/String;

.field protected mIsAdRatingDisabled:Z

.field protected mIsBookmarked:Z

.field protected mIsClosed:Z

.field protected mIsMessageToBusinessEnabled:Z

.field protected mIsMovedToNewAddress:Z

.field protected mLatitude:D

.field protected mLocality:Ljava/lang/String;

.field protected mLocalizedAddress:Ljava/lang/String;

.field protected mLocalizedAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/AttributedLabelValuePair;",
            ">;"
        }
    .end annotation
.end field

.field protected mLocalizedHours:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLocalizedPhone:Ljava/lang/String;

.field protected mLocalizedPrice:Ljava/lang/String;

.field protected mLongitude:D

.field protected mMenu:Lcom/yelp/android/serializable/Menu;

.field protected mMenuDisplayUrl:Ljava/lang/String;

.field protected mMenuUrl:Ljava/lang/String;

.field protected mMovedToBusinessId:Ljava/lang/String;

.field protected mMovies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Movie;",
            ">;"
        }
    .end annotation
.end field

.field protected mName:Ljava/lang/String;

.field protected mNeighborhoods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPhotoCount:I

.field protected mPhotoUrl:Ljava/lang/String;

.field protected mPhotos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Photo;",
            ">;"
        }
    .end annotation
.end field

.field protected mPlatformAction:Lcom/yelp/android/serializable/PlatformAction;

.field protected mPrice:I

.field protected mPrimaryPhoto:Lcom/yelp/android/serializable/Photo;

.field protected mRecentCheckInFriends:Lcom/yelp/android/serializable/RecentFriendCheckIns;

.field protected mRegularCount:I

.field protected mRegularNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mReservation:Lcom/yelp/android/serializable/Reservation;

.field protected mReservationProviderString:Ljava/lang/String;

.field protected mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

.field protected mReviewCount:I

.field protected mReviewInsights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReviewInsight;",
            ">;"
        }
    .end annotation
.end field

.field protected mSpamAlert:Lcom/yelp/android/serializable/SpamAlert;

.field protected mSpecialHours:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/SpecialHours;",
            ">;"
        }
    .end annotation
.end field

.field protected mState:Ljava/lang/String;

.field protected mTheaterUrl:Ljava/lang/String;

.field protected mTipCount:I

.field protected mTopUser:Lcom/yelp/android/serializable/User;

.field protected mTransitDescription:Ljava/lang/String;

.field protected mUrl:Ljava/lang/String;

.field protected mUserCheckinsCount:I

.field protected mUserCount:I

.field protected mUserDeals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpDeal;",
            ">;"
        }
    .end annotation
.end field

.field protected mUserReviewRating:I

.field protected mUserReviewStatus:Ljava/lang/String;

.field protected mVideoCount:I

.field protected mYelpUrl:Ljava/lang/String;

.field protected mZip:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    return-void
.end method

.method protected constructor <init>(Lcom/yelp/android/serializable/AlternateBusinessNames;Ljava/util/ArrayList;Lcom/yelp/android/serializable/CallToAction;Ljava/util/Date;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;Lcom/yelp/android/serializable/FromThisBusiness;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yelp/android/serializable/Menu;Lcom/yelp/android/serializable/Offer;Lcom/yelp/android/serializable/Photo;Lcom/yelp/android/serializable/PlatformAction;Lcom/yelp/android/serializable/RecentFriendCheckIns;Lcom/yelp/android/serializable/Reservation;Lcom/yelp/android/serializable/SpamAlert;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/User;Lcom/yelp/android/serializable/Video;Lcom/yelp/android/serializable/YelpAddresses;Lcom/yelp/android/serializable/YelpBusinessReview;Lcom/yelp/android/serializable/YelpDeal;ZZZZZDDFFIIIIIIIIIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/AlternateBusinessNames;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Movie;",
            ">;",
            "Lcom/yelp/android/serializable/CallToAction;",
            "Ljava/util/Date;",
            "Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;",
            "Lcom/yelp/android/serializable/FromThisBusiness;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/AttributedLabelValuePair;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Attribution;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Photo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/SpecialHours;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReviewInsight;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpDeal;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpHoursPair;",
            ">;",
            "Lcom/yelp/android/serializable/Menu;",
            "Lcom/yelp/android/serializable/Offer;",
            "Lcom/yelp/android/serializable/Photo;",
            "Lcom/yelp/android/serializable/PlatformAction;",
            "Lcom/yelp/android/serializable/RecentFriendCheckIns;",
            "Lcom/yelp/android/serializable/Reservation;",
            "Lcom/yelp/android/serializable/SpamAlert;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/User;",
            "Lcom/yelp/android/serializable/Video;",
            "Lcom/yelp/android/serializable/YelpAddresses;",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            "Lcom/yelp/android/serializable/YelpDeal;",
            "ZZZZZDDFFIIIIIIIIIII)V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/yelp/android/serializable/_YelpBusiness;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAlternateNames:Lcom/yelp/android/serializable/AlternateBusinessNames;

    .line 101
    iput-object p2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMovies:Ljava/util/ArrayList;

    .line 102
    iput-object p3, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCallToAction:Lcom/yelp/android/serializable/CallToAction;

    .line 103
    iput-object p4, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDateReopening:Ljava/util/Date;

    .line 104
    iput-object p5, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mFormatMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    .line 105
    iput-object p6, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mFromThisBusiness:Lcom/yelp/android/serializable/FromThisBusiness;

    .line 106
    iput-object p7, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedAttributes:Ljava/util/List;

    .line 107
    iput-object p8, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAttributions:Ljava/util/List;

    .line 108
    iput-object p9, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCategories:Ljava/util/List;

    .line 109
    iput-object p10, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPhotos:Ljava/util/List;

    .line 110
    iput-object p11, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mSpecialHours:Ljava/util/List;

    .line 111
    iput-object p12, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mNeighborhoods:Ljava/util/List;

    .line 112
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mRegularNames:Ljava/util/List;

    .line 113
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedHours:Ljava/util/List;

    .line 114
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCheckedInFriends:Ljava/util/List;

    .line 115
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReviewInsights:Ljava/util/List;

    .line 116
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserDeals:Ljava/util/List;

    .line 117
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mHours:Ljava/util/List;

    .line 118
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMenu:Lcom/yelp/android/serializable/Menu;

    .line 119
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCheckInOffer:Lcom/yelp/android/serializable/Offer;

    .line 120
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPrimaryPhoto:Lcom/yelp/android/serializable/Photo;

    .line 121
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPlatformAction:Lcom/yelp/android/serializable/PlatformAction;

    .line 122
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mRecentCheckInFriends:Lcom/yelp/android/serializable/RecentFriendCheckIns;

    .line 123
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReservation:Lcom/yelp/android/serializable/Reservation;

    .line 124
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mSpamAlert:Lcom/yelp/android/serializable/SpamAlert;

    .line 125
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mId:Ljava/lang/String;

    .line 126
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAddress1:Ljava/lang/String;

    .line 127
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAddress2:Ljava/lang/String;

    .line 128
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAddress3:Ljava/lang/String;

    .line 129
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mState:Ljava/lang/String;

    .line 130
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCity:Ljava/lang/String;

    .line 131
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mZip:Ljava/lang/String;

    .line 132
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCountry:Ljava/lang/String;

    .line 133
    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocality:Ljava/lang/String;

    .line 134
    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPhotoUrl:Ljava/lang/String;

    .line 135
    move-object/from16 v0, p36

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCrossStreets:Ljava/lang/String;

    .line 136
    move-object/from16 v0, p37

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedAddress:Ljava/lang/String;

    .line 137
    move-object/from16 v0, p38

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedPhone:Ljava/lang/String;

    .line 138
    move-object/from16 v0, p39

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedPrice:Ljava/lang/String;

    .line 139
    move-object/from16 v0, p40

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mName:Ljava/lang/String;

    .line 140
    move-object/from16 v0, p41

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAlias:Ljava/lang/String;

    .line 141
    move-object/from16 v0, p42

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDialablePhone:Ljava/lang/String;

    .line 142
    move-object/from16 v0, p43

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mTransitDescription:Ljava/lang/String;

    .line 143
    move-object/from16 v0, p44

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUrl:Ljava/lang/String;

    .line 144
    move-object/from16 v0, p45

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDisplayUrl:Ljava/lang/String;

    .line 145
    move-object/from16 v0, p46

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMenuUrl:Ljava/lang/String;

    .line 146
    move-object/from16 v0, p47

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMenuDisplayUrl:Ljava/lang/String;

    .line 147
    move-object/from16 v0, p48

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMovedToBusinessId:Ljava/lang/String;

    .line 148
    move-object/from16 v0, p49

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserReviewStatus:Ljava/lang/String;

    .line 149
    move-object/from16 v0, p50

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReservationProviderString:Ljava/lang/String;

    .line 150
    move-object/from16 v0, p51

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mTheaterUrl:Ljava/lang/String;

    .line 151
    move-object/from16 v0, p52

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mYelpUrl:Ljava/lang/String;

    .line 152
    move-object/from16 v0, p53

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mTopUser:Lcom/yelp/android/serializable/User;

    .line 153
    move-object/from16 v0, p54

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mBizOwnerVideo:Lcom/yelp/android/serializable/Video;

    .line 154
    move-object/from16 v0, p55

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDisplayAddresses:Lcom/yelp/android/serializable/YelpAddresses;

    .line 155
    move-object/from16 v0, p56

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 156
    move-object/from16 v0, p57

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDeal:Lcom/yelp/android/serializable/YelpDeal;

    .line 157
    move/from16 v0, p58

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsClosed:Z

    .line 158
    move/from16 v0, p59

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsMovedToNewAddress:Z

    .line 159
    move/from16 v0, p60

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsBookmarked:Z

    .line 160
    move/from16 v0, p61

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsAdRatingDisabled:Z

    .line 161
    move/from16 v0, p62

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsMessageToBusinessEnabled:Z

    .line 162
    move-wide/from16 v0, p63

    iput-wide v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLatitude:D

    .line 163
    move-wide/from16 v0, p65

    iput-wide v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLongitude:D

    .line 164
    move/from16 v0, p67

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAvgRating:F

    .line 165
    move/from16 v0, p68

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mGeoAccuracy:F

    .line 166
    move/from16 v0, p69

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReviewCount:I

    .line 167
    move/from16 v0, p70

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPrice:I

    .line 168
    move/from16 v0, p71

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mTipCount:I

    .line 169
    move/from16 v0, p72

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mRegularCount:I

    .line 170
    move/from16 v0, p73

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mFriendBookmarkedCount:I

    .line 171
    move/from16 v0, p74

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserCount:I

    .line 172
    move/from16 v0, p75

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCheckedInFriendCount:I

    .line 173
    move/from16 v0, p76

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPhotoCount:I

    .line 174
    move/from16 v0, p77

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserReviewRating:I

    .line 175
    move/from16 v0, p78

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserCheckinsCount:I

    .line 176
    move/from16 v0, p79

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mVideoCount:I

    .line 177
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAddress1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAddress2:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAddress3:Ljava/lang/String;

    return-object v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getAlternateNames()Lcom/yelp/android/serializable/AlternateBusinessNames;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAlternateNames:Lcom/yelp/android/serializable/AlternateBusinessNames;

    return-object v0
.end method

.method public getAttributions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Attribution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAttributions:Ljava/util/List;

    return-object v0
.end method

.method public getAvgRating()F
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAvgRating:F

    return v0
.end method

.method public getBizOwnerVideo()Lcom/yelp/android/serializable/Video;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mBizOwnerVideo:Lcom/yelp/android/serializable/Video;

    return-object v0
.end method

.method public getCallToAction()Lcom/yelp/android/serializable/CallToAction;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCallToAction:Lcom/yelp/android/serializable/CallToAction;

    return-object v0
.end method

.method public getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCategories:Ljava/util/List;

    return-object v0
.end method

.method public getCheckInOffer()Lcom/yelp/android/serializable/Offer;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCheckInOffer:Lcom/yelp/android/serializable/Offer;

    return-object v0
.end method

.method public getCheckedInFriendCount()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCheckedInFriendCount:I

    return v0
.end method

.method public getCheckedInFriends()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCheckedInFriends:Ljava/util/List;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getCrossStreets()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCrossStreets:Ljava/lang/String;

    return-object v0
.end method

.method public getDateReopening()Ljava/util/Date;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDateReopening:Ljava/util/Date;

    return-object v0
.end method

.method public getDeal()Lcom/yelp/android/serializable/YelpDeal;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDeal:Lcom/yelp/android/serializable/YelpDeal;

    return-object v0
.end method

.method public getDialablePhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDialablePhone:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayAddresses()Lcom/yelp/android/serializable/YelpAddresses;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDisplayAddresses:Lcom/yelp/android/serializable/YelpAddresses;

    return-object v0
.end method

.method public getDisplayUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDisplayUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatMode()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mFormatMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    return-object v0
.end method

.method public getFriendBookmarkedCount()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mFriendBookmarkedCount:I

    return v0
.end method

.method public getFromThisBusiness()Lcom/yelp/android/serializable/FromThisBusiness;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mFromThisBusiness:Lcom/yelp/android/serializable/FromThisBusiness;

    return-object v0
.end method

.method public getGeoAccuracy()F
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mGeoAccuracy:F

    return v0
.end method

.method public getHours()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpHoursPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mHours:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 370
    iget-wide v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLatitude:D

    return-wide v0
.end method

.method public getLocality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocality:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/AttributedLabelValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedAttributes:Ljava/util/List;

    return-object v0
.end method

.method public getLocalizedHours()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedHours:Ljava/util/List;

    return-object v0
.end method

.method public getLocalizedPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 373
    iget-wide v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLongitude:D

    return-wide v0
.end method

.method public getMenu()Lcom/yelp/android/serializable/Menu;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMenu:Lcom/yelp/android/serializable/Menu;

    return-object v0
.end method

.method public getMenuDisplayUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMenuDisplayUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMenuUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMovedToBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMovedToBusinessId:Ljava/lang/String;

    return-object v0
.end method

.method public getMovies()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Movie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMovies:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNeighborhoods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mNeighborhoods:Ljava/util/List;

    return-object v0
.end method

.method public getPhotoCount()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPhotoCount:I

    return v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Photo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPhotos:Ljava/util/List;

    return-object v0
.end method

.method public getPlatformAction()Lcom/yelp/android/serializable/PlatformAction;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPlatformAction:Lcom/yelp/android/serializable/PlatformAction;

    return-object v0
.end method

.method public getPrice()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPrice:I

    return v0
.end method

.method public getPrimaryPhoto()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPrimaryPhoto:Lcom/yelp/android/serializable/Photo;

    return-object v0
.end method

.method public getRecentCheckInFriends()Lcom/yelp/android/serializable/RecentFriendCheckIns;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mRecentCheckInFriends:Lcom/yelp/android/serializable/RecentFriendCheckIns;

    return-object v0
.end method

.method public getRegularCount()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mRegularCount:I

    return v0
.end method

.method public getRegularNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mRegularNames:Ljava/util/List;

    return-object v0
.end method

.method public getReservation()Lcom/yelp/android/serializable/Reservation;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReservation:Lcom/yelp/android/serializable/Reservation;

    return-object v0
.end method

.method public getReservationProviderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReservationProviderString:Ljava/lang/String;

    return-object v0
.end method

.method public getReview()Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    return-object v0
.end method

.method public getReviewCount()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReviewCount:I

    return v0
.end method

.method public getReviewInsights()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReviewInsight;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReviewInsights:Ljava/util/List;

    return-object v0
.end method

.method public getSpamAlert()Lcom/yelp/android/serializable/SpamAlert;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mSpamAlert:Lcom/yelp/android/serializable/SpamAlert;

    return-object v0
.end method

.method public getSpecialHours()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/SpecialHours;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mSpecialHours:Ljava/util/List;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public getTheaterUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mTheaterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTipCount()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mTipCount:I

    return v0
.end method

.method public getTopUser()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mTopUser:Lcom/yelp/android/serializable/User;

    return-object v0
.end method

.method public getTransitDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mTransitDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCheckinsCount()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserCheckinsCount:I

    return v0
.end method

.method public getUserCount()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserCount:I

    return v0
.end method

.method public getUserDeals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpDeal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserDeals:Ljava/util/List;

    return-object v0
.end method

.method public getUserReviewRating()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserReviewRating:I

    return v0
.end method

.method public getUserReviewStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserReviewStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoCount()I
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mVideoCount:I

    return v0
.end method

.method public getYelpUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mYelpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getZip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mZip:Ljava/lang/String;

    return-object v0
.end method

.method public isAdRatingDisabled()Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsAdRatingDisabled:Z

    return v0
.end method

.method public isBookmarked()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsBookmarked:Z

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsClosed:Z

    return v0
.end method

.method public isMessageToBusinessEnabled()Z
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsMessageToBusinessEnabled:Z

    return v0
.end method

.method public isMovedToNewAddress()Z
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsMovedToNewAddress:Z

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 581
    const-string/jumbo v0, "alternate_names"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 582
    sget-object v0, Lcom/yelp/android/serializable/AlternateBusinessNames;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "alternate_names"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AlternateBusinessNames;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAlternateNames:Lcom/yelp/android/serializable/AlternateBusinessNames;

    .line 584
    :cond_0
    const-string/jumbo v0, "movies"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 585
    const-string/jumbo v0, "movies"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Movie;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMovies:Ljava/util/ArrayList;

    .line 589
    :goto_0
    const-string/jumbo v0, "call_to_action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 590
    sget-object v0, Lcom/yelp/android/serializable/CallToAction;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "call_to_action"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/CallToAction;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCallToAction:Lcom/yelp/android/serializable/CallToAction;

    .line 592
    :cond_1
    const-string/jumbo v0, "time_reopening"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 593
    const-string/jumbo v0, "time_reopening"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDateReopening:Ljava/util/Date;

    .line 595
    :cond_2
    const-string/jumbo v0, "from_this_business"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 596
    sget-object v0, Lcom/yelp/android/serializable/FromThisBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "from_this_business"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FromThisBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mFromThisBusiness:Lcom/yelp/android/serializable/FromThisBusiness;

    .line 598
    :cond_3
    const-string/jumbo v0, "localized_attributes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 599
    const-string/jumbo v0, "localized_attributes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/AttributedLabelValuePair;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedAttributes:Ljava/util/List;

    .line 603
    :goto_1
    const-string/jumbo v0, "attributions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 604
    const-string/jumbo v0, "attributions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Attribution;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAttributions:Ljava/util/List;

    .line 608
    :goto_2
    const-string/jumbo v0, "categories"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 609
    const-string/jumbo v0, "categories"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Category;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCategories:Ljava/util/List;

    .line 613
    :goto_3
    const-string/jumbo v0, "photos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 614
    const-string/jumbo v0, "photos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Photo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPhotos:Ljava/util/List;

    .line 618
    :goto_4
    const-string/jumbo v0, "special_hours"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 619
    const-string/jumbo v0, "special_hours"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/SpecialHours;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mSpecialHours:Ljava/util/List;

    .line 623
    :goto_5
    const-string/jumbo v0, "neighborhoods"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 624
    const-string/jumbo v0, "neighborhoods"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/parcelgen/JsonUtil;->getStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mNeighborhoods:Ljava/util/List;

    .line 628
    :goto_6
    const-string/jumbo v0, "regular_names"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 629
    const-string/jumbo v0, "regular_names"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/parcelgen/JsonUtil;->getStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mRegularNames:Ljava/util/List;

    .line 633
    :goto_7
    const-string/jumbo v0, "localized_hours"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 634
    const-string/jumbo v0, "localized_hours"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/parcelgen/JsonUtil;->getStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedHours:Ljava/util/List;

    .line 638
    :goto_8
    const-string/jumbo v0, "demographics"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 639
    const-string/jumbo v0, "demographics"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/YelpBusinessReviewInsight;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReviewInsights:Ljava/util/List;

    .line 643
    :goto_9
    const-string/jumbo v0, "user_deals"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 644
    const-string/jumbo v0, "user_deals"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/YelpDeal;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserDeals:Ljava/util/List;

    .line 648
    :goto_a
    const-string/jumbo v0, "hours"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 649
    const-string/jumbo v0, "hours"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/YelpHoursPair;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mHours:Ljava/util/List;

    .line 653
    :goto_b
    const-string/jumbo v0, "menu"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 654
    sget-object v0, Lcom/yelp/android/serializable/Menu;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "menu"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Menu;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMenu:Lcom/yelp/android/serializable/Menu;

    .line 656
    :cond_4
    const-string/jumbo v0, "check_in_offer"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 657
    sget-object v0, Lcom/yelp/android/serializable/Offer;->CREATOR:Lcom/yelp/android/serializable/ah;

    const-string/jumbo v1, "check_in_offer"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ah;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Offer;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCheckInOffer:Lcom/yelp/android/serializable/Offer;

    .line 659
    :cond_5
    const-string/jumbo v0, "primary_photo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 660
    sget-object v0, Lcom/yelp/android/serializable/Photo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "primary_photo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPrimaryPhoto:Lcom/yelp/android/serializable/Photo;

    .line 662
    :cond_6
    const-string/jumbo v0, "platform_action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 663
    sget-object v0, Lcom/yelp/android/serializable/PlatformAction;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "platform_action"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformAction;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPlatformAction:Lcom/yelp/android/serializable/PlatformAction;

    .line 665
    :cond_7
    const-string/jumbo v0, "recent_check_in_friends"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 666
    sget-object v0, Lcom/yelp/android/serializable/RecentFriendCheckIns;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "recent_check_in_friends"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RecentFriendCheckIns;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mRecentCheckInFriends:Lcom/yelp/android/serializable/RecentFriendCheckIns;

    .line 668
    :cond_8
    const-string/jumbo v0, "reservation"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 669
    sget-object v0, Lcom/yelp/android/serializable/Reservation;->CREATOR:Lcom/yelp/android/serializable/ah;

    const-string/jumbo v1, "reservation"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ah;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Reservation;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReservation:Lcom/yelp/android/serializable/Reservation;

    .line 671
    :cond_9
    const-string/jumbo v0, "spam_alert"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 672
    sget-object v0, Lcom/yelp/android/serializable/SpamAlert;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "spam_alert"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SpamAlert;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mSpamAlert:Lcom/yelp/android/serializable/SpamAlert;

    .line 674
    :cond_a
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 675
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mId:Ljava/lang/String;

    .line 677
    :cond_b
    const-string/jumbo v0, "address1"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 678
    const-string/jumbo v0, "address1"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAddress1:Ljava/lang/String;

    .line 680
    :cond_c
    const-string/jumbo v0, "address2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 681
    const-string/jumbo v0, "address2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAddress2:Ljava/lang/String;

    .line 683
    :cond_d
    const-string/jumbo v0, "address3"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 684
    const-string/jumbo v0, "address3"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAddress3:Ljava/lang/String;

    .line 686
    :cond_e
    const-string/jumbo v0, "state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 687
    const-string/jumbo v0, "state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mState:Ljava/lang/String;

    .line 689
    :cond_f
    const-string/jumbo v0, "city"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 690
    const-string/jumbo v0, "city"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCity:Ljava/lang/String;

    .line 692
    :cond_10
    const-string/jumbo v0, "zip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 693
    const-string/jumbo v0, "zip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mZip:Ljava/lang/String;

    .line 695
    :cond_11
    const-string/jumbo v0, "country"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 696
    const-string/jumbo v0, "country"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCountry:Ljava/lang/String;

    .line 698
    :cond_12
    const-string/jumbo v0, "locality"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 699
    const-string/jumbo v0, "locality"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocality:Ljava/lang/String;

    .line 701
    :cond_13
    const-string/jumbo v0, "photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 702
    const-string/jumbo v0, "photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPhotoUrl:Ljava/lang/String;

    .line 704
    :cond_14
    const-string/jumbo v0, "cross_streets"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 705
    const-string/jumbo v0, "cross_streets"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCrossStreets:Ljava/lang/String;

    .line 707
    :cond_15
    const-string/jumbo v0, "localized_address"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 708
    const-string/jumbo v0, "localized_address"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedAddress:Ljava/lang/String;

    .line 710
    :cond_16
    const-string/jumbo v0, "localized_phone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 711
    const-string/jumbo v0, "localized_phone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedPhone:Ljava/lang/String;

    .line 713
    :cond_17
    const-string/jumbo v0, "localized_price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 714
    const-string/jumbo v0, "localized_price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedPrice:Ljava/lang/String;

    .line 716
    :cond_18
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 717
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mName:Ljava/lang/String;

    .line 719
    :cond_19
    const-string/jumbo v0, "alias"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 720
    const-string/jumbo v0, "alias"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAlias:Ljava/lang/String;

    .line 722
    :cond_1a
    const-string/jumbo v0, "dialable_phone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 723
    const-string/jumbo v0, "dialable_phone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDialablePhone:Ljava/lang/String;

    .line 725
    :cond_1b
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 726
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUrl:Ljava/lang/String;

    .line 728
    :cond_1c
    const-string/jumbo v0, "display_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 729
    const-string/jumbo v0, "display_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDisplayUrl:Ljava/lang/String;

    .line 731
    :cond_1d
    const-string/jumbo v0, "menu_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 732
    const-string/jumbo v0, "menu_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMenuUrl:Ljava/lang/String;

    .line 734
    :cond_1e
    const-string/jumbo v0, "menu_display_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 735
    const-string/jumbo v0, "menu_display_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMenuDisplayUrl:Ljava/lang/String;

    .line 737
    :cond_1f
    const-string/jumbo v0, "moved_to_business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 738
    const-string/jumbo v0, "moved_to_business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMovedToBusinessId:Ljava/lang/String;

    .line 740
    :cond_20
    const-string/jumbo v0, "user_review_activity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 741
    const-string/jumbo v0, "user_review_activity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserReviewStatus:Ljava/lang/String;

    .line 745
    :goto_c
    const-string/jumbo v0, "reservation_provider"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 746
    const-string/jumbo v0, "reservation_provider"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReservationProviderString:Ljava/lang/String;

    .line 748
    :cond_21
    const-string/jumbo v0, "theater_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 749
    const-string/jumbo v0, "theater_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mTheaterUrl:Ljava/lang/String;

    .line 751
    :cond_22
    const-string/jumbo v0, "yelp_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 752
    const-string/jumbo v0, "yelp_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mYelpUrl:Ljava/lang/String;

    .line 754
    :cond_23
    const-string/jumbo v0, "top_user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 755
    sget-object v0, Lcom/yelp/android/serializable/User;->CREATOR:Lcom/yelp/android/serializable/ah;

    const-string/jumbo v1, "top_user"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ah;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mTopUser:Lcom/yelp/android/serializable/User;

    .line 757
    :cond_24
    const-string/jumbo v0, "biz_owner_video"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 758
    sget-object v0, Lcom/yelp/android/serializable/Video;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "biz_owner_video"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Video;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mBizOwnerVideo:Lcom/yelp/android/serializable/Video;

    .line 760
    :cond_25
    const-string/jumbo v0, "addresses"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 761
    sget-object v0, Lcom/yelp/android/serializable/YelpAddresses;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "addresses"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpAddresses;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDisplayAddresses:Lcom/yelp/android/serializable/YelpAddresses;

    .line 763
    :cond_26
    const-string/jumbo v0, "review"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 764
    sget-object v0, Lcom/yelp/android/serializable/YelpBusinessReview;->CREATOR:Lcom/yelp/android/serializable/ah;

    const-string/jumbo v1, "review"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ah;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 766
    :cond_27
    const-string/jumbo v0, "deal"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 767
    sget-object v0, Lcom/yelp/android/serializable/YelpDeal;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "deal"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDeal:Lcom/yelp/android/serializable/YelpDeal;

    .line 769
    :cond_28
    const-string/jumbo v0, "is_closed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsClosed:Z

    .line 770
    const-string/jumbo v0, "is_moved_to_new_address"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsMovedToNewAddress:Z

    .line 771
    const-string/jumbo v0, "is_bookmarked"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsBookmarked:Z

    .line 772
    const-string/jumbo v0, "is_ad_rating_disabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsAdRatingDisabled:Z

    .line 773
    const-string/jumbo v0, "is_message_to_business_enabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsMessageToBusinessEnabled:Z

    .line 774
    const-string/jumbo v0, "latitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLatitude:D

    .line 775
    const-string/jumbo v0, "longitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLongitude:D

    .line 776
    const-string/jumbo v0, "avg_rating"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAvgRating:F

    .line 777
    const-string/jumbo v0, "geo_accuracy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mGeoAccuracy:F

    .line 778
    const-string/jumbo v0, "review_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReviewCount:I

    .line 779
    const-string/jumbo v0, "price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPrice:I

    .line 780
    const-string/jumbo v0, "quicktip_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mTipCount:I

    .line 781
    const-string/jumbo v0, "regular_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mRegularCount:I

    .line 782
    const-string/jumbo v0, "friend_bookmarked_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mFriendBookmarkedCount:I

    .line 783
    const-string/jumbo v0, "user_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserCount:I

    .line 784
    const-string/jumbo v0, "photo_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPhotoCount:I

    .line 785
    const-string/jumbo v0, "user_latest_review_rating"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserReviewRating:I

    .line 786
    const-string/jumbo v0, "user_check_in_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserCheckinsCount:I

    .line 787
    const-string/jumbo v0, "video_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mVideoCount:I

    .line 788
    return-void

    .line 587
    :cond_29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMovies:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 601
    :cond_2a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedAttributes:Ljava/util/List;

    goto/16 :goto_1

    .line 606
    :cond_2b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAttributions:Ljava/util/List;

    goto/16 :goto_2

    .line 611
    :cond_2c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCategories:Ljava/util/List;

    goto/16 :goto_3

    .line 616
    :cond_2d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPhotos:Ljava/util/List;

    goto/16 :goto_4

    .line 621
    :cond_2e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mSpecialHours:Ljava/util/List;

    goto/16 :goto_5

    .line 626
    :cond_2f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mNeighborhoods:Ljava/util/List;

    goto/16 :goto_6

    .line 631
    :cond_30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mRegularNames:Ljava/util/List;

    goto/16 :goto_7

    .line 636
    :cond_31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedHours:Ljava/util/List;

    goto/16 :goto_8

    .line 641
    :cond_32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReviewInsights:Ljava/util/List;

    goto/16 :goto_9

    .line 646
    :cond_33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserDeals:Ljava/util/List;

    goto/16 :goto_a

    .line 651
    :cond_34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mHours:Ljava/util/List;

    goto/16 :goto_b

    .line 743
    :cond_35
    const-string/jumbo v0, "not_started"

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserReviewStatus:Ljava/lang/String;

    goto/16 :goto_c
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 497
    const-class v0, Lcom/yelp/android/serializable/AlternateBusinessNames;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AlternateBusinessNames;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAlternateNames:Lcom/yelp/android/serializable/AlternateBusinessNames;

    .line 498
    sget-object v0, Lcom/yelp/android/serializable/Movie;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMovies:Ljava/util/ArrayList;

    .line 499
    const-class v0, Lcom/yelp/android/serializable/CallToAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/CallToAction;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCallToAction:Lcom/yelp/android/serializable/CallToAction;

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 501
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 502
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDateReopening:Ljava/util/Date;

    .line 504
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mFormatMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    .line 505
    const-class v0, Lcom/yelp/android/serializable/FromThisBusiness;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FromThisBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mFromThisBusiness:Lcom/yelp/android/serializable/FromThisBusiness;

    .line 506
    sget-object v0, Lcom/yelp/android/serializable/AttributedLabelValuePair;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedAttributes:Ljava/util/List;

    .line 507
    sget-object v0, Lcom/yelp/android/serializable/Attribution;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAttributions:Ljava/util/List;

    .line 508
    sget-object v0, Lcom/yelp/android/serializable/Category;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCategories:Ljava/util/List;

    .line 509
    sget-object v0, Lcom/yelp/android/serializable/Photo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPhotos:Ljava/util/List;

    .line 510
    sget-object v0, Lcom/yelp/android/serializable/SpecialHours;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mSpecialHours:Ljava/util/List;

    .line 511
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mNeighborhoods:Ljava/util/List;

    .line 512
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mRegularNames:Ljava/util/List;

    .line 513
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedHours:Ljava/util/List;

    .line 514
    sget-object v0, Lcom/yelp/android/serializable/User;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCheckedInFriends:Ljava/util/List;

    .line 515
    sget-object v0, Lcom/yelp/android/serializable/YelpBusinessReviewInsight;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReviewInsights:Ljava/util/List;

    .line 516
    sget-object v0, Lcom/yelp/android/serializable/YelpDeal;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserDeals:Ljava/util/List;

    .line 517
    sget-object v0, Lcom/yelp/android/serializable/YelpHoursPair;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mHours:Ljava/util/List;

    .line 518
    const-class v0, Lcom/yelp/android/serializable/Menu;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Menu;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMenu:Lcom/yelp/android/serializable/Menu;

    .line 519
    const-class v0, Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Offer;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCheckInOffer:Lcom/yelp/android/serializable/Offer;

    .line 520
    const-class v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPrimaryPhoto:Lcom/yelp/android/serializable/Photo;

    .line 521
    const-class v0, Lcom/yelp/android/serializable/PlatformAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformAction;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPlatformAction:Lcom/yelp/android/serializable/PlatformAction;

    .line 522
    const-class v0, Lcom/yelp/android/serializable/RecentFriendCheckIns;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RecentFriendCheckIns;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mRecentCheckInFriends:Lcom/yelp/android/serializable/RecentFriendCheckIns;

    .line 523
    const-class v0, Lcom/yelp/android/serializable/Reservation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Reservation;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReservation:Lcom/yelp/android/serializable/Reservation;

    .line 524
    const-class v0, Lcom/yelp/android/serializable/SpamAlert;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SpamAlert;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mSpamAlert:Lcom/yelp/android/serializable/SpamAlert;

    .line 525
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mId:Ljava/lang/String;

    .line 526
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAddress1:Ljava/lang/String;

    .line 527
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAddress2:Ljava/lang/String;

    .line 528
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAddress3:Ljava/lang/String;

    .line 529
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mState:Ljava/lang/String;

    .line 530
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCity:Ljava/lang/String;

    .line 531
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mZip:Ljava/lang/String;

    .line 532
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCountry:Ljava/lang/String;

    .line 533
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocality:Ljava/lang/String;

    .line 534
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPhotoUrl:Ljava/lang/String;

    .line 535
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCrossStreets:Ljava/lang/String;

    .line 536
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedAddress:Ljava/lang/String;

    .line 537
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedPhone:Ljava/lang/String;

    .line 538
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedPrice:Ljava/lang/String;

    .line 539
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mName:Ljava/lang/String;

    .line 540
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAlias:Ljava/lang/String;

    .line 541
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDialablePhone:Ljava/lang/String;

    .line 542
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mTransitDescription:Ljava/lang/String;

    .line 543
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUrl:Ljava/lang/String;

    .line 544
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDisplayUrl:Ljava/lang/String;

    .line 545
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMenuUrl:Ljava/lang/String;

    .line 546
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMenuDisplayUrl:Ljava/lang/String;

    .line 547
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMovedToBusinessId:Ljava/lang/String;

    .line 548
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserReviewStatus:Ljava/lang/String;

    .line 549
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReservationProviderString:Ljava/lang/String;

    .line 550
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mTheaterUrl:Ljava/lang/String;

    .line 551
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mYelpUrl:Ljava/lang/String;

    .line 552
    const-class v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mTopUser:Lcom/yelp/android/serializable/User;

    .line 553
    const-class v0, Lcom/yelp/android/serializable/Video;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Video;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mBizOwnerVideo:Lcom/yelp/android/serializable/Video;

    .line 554
    const-class v0, Lcom/yelp/android/serializable/YelpAddresses;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpAddresses;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDisplayAddresses:Lcom/yelp/android/serializable/YelpAddresses;

    .line 555
    const-class v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 556
    const-class v0, Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDeal:Lcom/yelp/android/serializable/YelpDeal;

    .line 557
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 558
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsClosed:Z

    .line 559
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsMovedToNewAddress:Z

    .line 560
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsBookmarked:Z

    .line 561
    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsAdRatingDisabled:Z

    .line 562
    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsMessageToBusinessEnabled:Z

    .line 563
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLatitude:D

    .line 564
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLongitude:D

    .line 565
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAvgRating:F

    .line 566
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mGeoAccuracy:F

    .line 567
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReviewCount:I

    .line 568
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPrice:I

    .line 569
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mTipCount:I

    .line 570
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mRegularCount:I

    .line 571
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mFriendBookmarkedCount:I

    .line 572
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserCount:I

    .line 573
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCheckedInFriendCount:I

    .line 574
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPhotoCount:I

    .line 575
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserReviewRating:I

    .line 576
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserCheckinsCount:I

    .line 577
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mVideoCount:I

    .line 578
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 791
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 792
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAlternateNames:Lcom/yelp/android/serializable/AlternateBusinessNames;

    if-eqz v0, :cond_0

    .line 793
    const-string/jumbo v0, "alternate_names"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAlternateNames:Lcom/yelp/android/serializable/AlternateBusinessNames;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/AlternateBusinessNames;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMovies:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 796
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 797
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMovies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Movie;

    .line 798
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Movie;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 800
    :cond_1
    const-string/jumbo v0, "movies"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 802
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCallToAction:Lcom/yelp/android/serializable/CallToAction;

    if-eqz v0, :cond_3

    .line 803
    const-string/jumbo v0, "call_to_action"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCallToAction:Lcom/yelp/android/serializable/CallToAction;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/CallToAction;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 805
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDateReopening:Ljava/util/Date;

    if-eqz v0, :cond_4

    .line 806
    const-string/jumbo v0, "time_reopening"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDateReopening:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 808
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mFromThisBusiness:Lcom/yelp/android/serializable/FromThisBusiness;

    if-eqz v0, :cond_5

    .line 809
    const-string/jumbo v0, "from_this_business"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mFromThisBusiness:Lcom/yelp/android/serializable/FromThisBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/FromThisBusiness;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 811
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedAttributes:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 812
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 813
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AttributedLabelValuePair;

    .line 814
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributedLabelValuePair;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 816
    :cond_6
    const-string/jumbo v0, "localized_attributes"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 818
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAttributions:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 819
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 820
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAttributions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Attribution;

    .line 821
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Attribution;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 823
    :cond_8
    const-string/jumbo v0, "attributions"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 825
    :cond_9
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCategories:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 826
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 827
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Category;

    .line 828
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 830
    :cond_a
    const-string/jumbo v0, "categories"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 832
    :cond_b
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPhotos:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 833
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 834
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPhotos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    .line 835
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    .line 837
    :cond_c
    const-string/jumbo v0, "photos"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 839
    :cond_d
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mSpecialHours:Ljava/util/List;

    if-eqz v0, :cond_f

    .line 840
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 841
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mSpecialHours:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SpecialHours;

    .line 842
    invoke-virtual {v0}, Lcom/yelp/android/serializable/SpecialHours;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_5

    .line 844
    :cond_e
    const-string/jumbo v0, "special_hours"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 846
    :cond_f
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mNeighborhoods:Ljava/util/List;

    if-eqz v0, :cond_11

    .line 847
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 848
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mNeighborhoods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 849
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_6

    .line 851
    :cond_10
    const-string/jumbo v0, "neighborhoods"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 853
    :cond_11
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mRegularNames:Ljava/util/List;

    if-eqz v0, :cond_13

    .line 854
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 855
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mRegularNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 856
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_7

    .line 858
    :cond_12
    const-string/jumbo v0, "regular_names"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 860
    :cond_13
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedHours:Ljava/util/List;

    if-eqz v0, :cond_15

    .line 861
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 862
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedHours:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 863
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_8

    .line 865
    :cond_14
    const-string/jumbo v0, "localized_hours"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 867
    :cond_15
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReviewInsights:Ljava/util/List;

    if-eqz v0, :cond_17

    .line 868
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 869
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReviewInsights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReviewInsight;

    .line 870
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReviewInsight;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    .line 872
    :cond_16
    const-string/jumbo v0, "demographics"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 874
    :cond_17
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserDeals:Ljava/util/List;

    if-eqz v0, :cond_19

    .line 875
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 876
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserDeals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    .line 877
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_a

    .line 879
    :cond_18
    const-string/jumbo v0, "user_deals"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 881
    :cond_19
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mHours:Ljava/util/List;

    if-eqz v0, :cond_1b

    .line 882
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 883
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mHours:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpHoursPair;

    .line 884
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpHoursPair;->writeJSON()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_b

    .line 886
    :cond_1a
    const-string/jumbo v0, "hours"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 888
    :cond_1b
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMenu:Lcom/yelp/android/serializable/Menu;

    if-eqz v0, :cond_1c

    .line 889
    const-string/jumbo v0, "menu"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMenu:Lcom/yelp/android/serializable/Menu;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Menu;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 891
    :cond_1c
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCheckInOffer:Lcom/yelp/android/serializable/Offer;

    if-eqz v0, :cond_1d

    .line 892
    const-string/jumbo v0, "check_in_offer"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCheckInOffer:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Offer;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 894
    :cond_1d
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPrimaryPhoto:Lcom/yelp/android/serializable/Photo;

    if-eqz v0, :cond_1e

    .line 895
    const-string/jumbo v0, "primary_photo"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPrimaryPhoto:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Photo;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 897
    :cond_1e
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPlatformAction:Lcom/yelp/android/serializable/PlatformAction;

    if-eqz v0, :cond_1f

    .line 898
    const-string/jumbo v0, "platform_action"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPlatformAction:Lcom/yelp/android/serializable/PlatformAction;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/PlatformAction;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 900
    :cond_1f
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mRecentCheckInFriends:Lcom/yelp/android/serializable/RecentFriendCheckIns;

    if-eqz v0, :cond_20

    .line 901
    const-string/jumbo v0, "recent_check_in_friends"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mRecentCheckInFriends:Lcom/yelp/android/serializable/RecentFriendCheckIns;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/RecentFriendCheckIns;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 903
    :cond_20
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReservation:Lcom/yelp/android/serializable/Reservation;

    if-eqz v0, :cond_21

    .line 904
    const-string/jumbo v0, "reservation"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReservation:Lcom/yelp/android/serializable/Reservation;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Reservation;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 906
    :cond_21
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mSpamAlert:Lcom/yelp/android/serializable/SpamAlert;

    if-eqz v0, :cond_22

    .line 907
    const-string/jumbo v0, "spam_alert"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mSpamAlert:Lcom/yelp/android/serializable/SpamAlert;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/SpamAlert;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 909
    :cond_22
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mId:Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 910
    const-string/jumbo v0, "id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 912
    :cond_23
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAddress1:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 913
    const-string/jumbo v0, "address1"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAddress1:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 915
    :cond_24
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAddress2:Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 916
    const-string/jumbo v0, "address2"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAddress2:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 918
    :cond_25
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAddress3:Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 919
    const-string/jumbo v0, "address3"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAddress3:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 921
    :cond_26
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mState:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 922
    const-string/jumbo v0, "state"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mState:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 924
    :cond_27
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCity:Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 925
    const-string/jumbo v0, "city"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCity:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 927
    :cond_28
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mZip:Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 928
    const-string/jumbo v0, "zip"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mZip:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 930
    :cond_29
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCountry:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 931
    const-string/jumbo v0, "country"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCountry:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 933
    :cond_2a
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocality:Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 934
    const-string/jumbo v0, "locality"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocality:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 936
    :cond_2b
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPhotoUrl:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 937
    const-string/jumbo v0, "photo_url"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPhotoUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 939
    :cond_2c
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCrossStreets:Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 940
    const-string/jumbo v0, "cross_streets"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCrossStreets:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 942
    :cond_2d
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedAddress:Ljava/lang/String;

    if-eqz v0, :cond_2e

    .line 943
    const-string/jumbo v0, "localized_address"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedAddress:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 945
    :cond_2e
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedPhone:Ljava/lang/String;

    if-eqz v0, :cond_2f

    .line 946
    const-string/jumbo v0, "localized_phone"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedPhone:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 948
    :cond_2f
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedPrice:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 949
    const-string/jumbo v0, "localized_price"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedPrice:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 951
    :cond_30
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mName:Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 952
    const-string/jumbo v0, "name"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 954
    :cond_31
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAlias:Ljava/lang/String;

    if-eqz v0, :cond_32

    .line 955
    const-string/jumbo v0, "alias"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAlias:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 957
    :cond_32
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDialablePhone:Ljava/lang/String;

    if-eqz v0, :cond_33

    .line 958
    const-string/jumbo v0, "dialable_phone"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDialablePhone:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 960
    :cond_33
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_34

    .line 961
    const-string/jumbo v0, "url"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 963
    :cond_34
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDisplayUrl:Ljava/lang/String;

    if-eqz v0, :cond_35

    .line 964
    const-string/jumbo v0, "display_url"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDisplayUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 966
    :cond_35
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMenuUrl:Ljava/lang/String;

    if-eqz v0, :cond_36

    .line 967
    const-string/jumbo v0, "menu_url"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMenuUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 969
    :cond_36
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMenuDisplayUrl:Ljava/lang/String;

    if-eqz v0, :cond_37

    .line 970
    const-string/jumbo v0, "menu_display_url"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMenuDisplayUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 972
    :cond_37
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMovedToBusinessId:Ljava/lang/String;

    if-eqz v0, :cond_38

    .line 973
    const-string/jumbo v0, "moved_to_business_id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMovedToBusinessId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 975
    :cond_38
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserReviewStatus:Ljava/lang/String;

    if-eqz v0, :cond_39

    .line 976
    const-string/jumbo v0, "user_review_activity"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserReviewStatus:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 978
    :cond_39
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReservationProviderString:Ljava/lang/String;

    if-eqz v0, :cond_3a

    .line 979
    const-string/jumbo v0, "reservation_provider"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReservationProviderString:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 981
    :cond_3a
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mTheaterUrl:Ljava/lang/String;

    if-eqz v0, :cond_3b

    .line 982
    const-string/jumbo v0, "theater_url"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mTheaterUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 984
    :cond_3b
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mYelpUrl:Ljava/lang/String;

    if-eqz v0, :cond_3c

    .line 985
    const-string/jumbo v0, "yelp_url"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mYelpUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 987
    :cond_3c
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mTopUser:Lcom/yelp/android/serializable/User;

    if-eqz v0, :cond_3d

    .line 988
    const-string/jumbo v0, "top_user"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mTopUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 990
    :cond_3d
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mBizOwnerVideo:Lcom/yelp/android/serializable/Video;

    if-eqz v0, :cond_3e

    .line 991
    const-string/jumbo v0, "biz_owner_video"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mBizOwnerVideo:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Video;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 993
    :cond_3e
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDisplayAddresses:Lcom/yelp/android/serializable/YelpAddresses;

    if-eqz v0, :cond_3f

    .line 994
    const-string/jumbo v0, "addresses"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDisplayAddresses:Lcom/yelp/android/serializable/YelpAddresses;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpAddresses;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 996
    :cond_3f
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    if-eqz v0, :cond_40

    .line 997
    const-string/jumbo v0, "review"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusinessReview;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 999
    :cond_40
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDeal:Lcom/yelp/android/serializable/YelpDeal;

    if-eqz v0, :cond_41

    .line 1000
    const-string/jumbo v0, "deal"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDeal:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpDeal;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1002
    :cond_41
    const-string/jumbo v0, "is_closed"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsClosed:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1003
    const-string/jumbo v0, "is_moved_to_new_address"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsMovedToNewAddress:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1004
    const-string/jumbo v0, "is_bookmarked"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsBookmarked:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1005
    const-string/jumbo v0, "is_ad_rating_disabled"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsAdRatingDisabled:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1006
    const-string/jumbo v0, "is_message_to_business_enabled"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsMessageToBusinessEnabled:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1007
    const-string/jumbo v0, "latitude"

    iget-wide v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLatitude:D

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1008
    const-string/jumbo v0, "longitude"

    iget-wide v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLongitude:D

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1009
    const-string/jumbo v0, "avg_rating"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAvgRating:F

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1010
    const-string/jumbo v0, "geo_accuracy"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mGeoAccuracy:F

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1011
    const-string/jumbo v0, "review_count"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReviewCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1012
    const-string/jumbo v0, "price"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPrice:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1013
    const-string/jumbo v0, "quicktip_count"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mTipCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1014
    const-string/jumbo v0, "regular_count"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mRegularCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1015
    const-string/jumbo v0, "friend_bookmarked_count"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mFriendBookmarkedCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1016
    const-string/jumbo v0, "user_count"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1017
    const-string/jumbo v0, "photo_count"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPhotoCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1018
    const-string/jumbo v0, "user_latest_review_rating"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserReviewRating:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1019
    const-string/jumbo v0, "user_check_in_count"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserCheckinsCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1020
    const-string/jumbo v0, "video_count"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mVideoCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1021
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 421
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAlternateNames:Lcom/yelp/android/serializable/AlternateBusinessNames;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 422
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMovies:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 423
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCallToAction:Lcom/yelp/android/serializable/CallToAction;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 424
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDateReopening:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/32 v0, -0x80000000

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 425
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mFormatMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 426
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mFromThisBusiness:Lcom/yelp/android/serializable/FromThisBusiness;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 427
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedAttributes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 428
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAttributions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 429
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCategories:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 430
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPhotos:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 431
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mSpecialHours:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 432
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mNeighborhoods:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 433
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mRegularNames:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 434
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedHours:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 435
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCheckedInFriends:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 436
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReviewInsights:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 437
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserDeals:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 438
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mHours:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 439
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMenu:Lcom/yelp/android/serializable/Menu;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 440
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCheckInOffer:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 441
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPrimaryPhoto:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 442
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPlatformAction:Lcom/yelp/android/serializable/PlatformAction;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 443
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mRecentCheckInFriends:Lcom/yelp/android/serializable/RecentFriendCheckIns;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 444
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReservation:Lcom/yelp/android/serializable/Reservation;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 445
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mSpamAlert:Lcom/yelp/android/serializable/SpamAlert;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 446
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAddress1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAddress2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAddress3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mZip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCountry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocality:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPhotoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCrossStreets:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedPhone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLocalizedPrice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDialablePhone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mTransitDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDisplayUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMenuUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMenuDisplayUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mMovedToBusinessId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserReviewStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReservationProviderString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mTheaterUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mYelpUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mTopUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 474
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mBizOwnerVideo:Lcom/yelp/android/serializable/Video;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 475
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDisplayAddresses:Lcom/yelp/android/serializable/YelpAddresses;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 476
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 477
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDeal:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 478
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsClosed:Z

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsMovedToNewAddress:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsBookmarked:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsAdRatingDisabled:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mIsMessageToBusinessEnabled:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 479
    iget-wide v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 480
    iget-wide v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 481
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mAvgRating:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 482
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mGeoAccuracy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 483
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mReviewCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPrice:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mTipCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mRegularCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mFriendBookmarkedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mCheckedInFriendCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mPhotoCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserReviewRating:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mUserCheckinsCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mVideoCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusiness;->mDateReopening:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto/16 :goto_0
.end method
