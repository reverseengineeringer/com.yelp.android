.class synthetic Lcom/yelp/android/ui/activities/businesspage/bp;
.super Ljava/lang/Object;
.source "BusinessPageFragment.java"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I

.field static final synthetic d:[I

.field static final synthetic e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3161
    invoke-static {}, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->values()[Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/bp;->e:[I

    :try_start_0
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/bp;->e:[I

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->REDEEM_DEAL:Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_11

    :goto_0
    :try_start_1
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/bp;->e:[I

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->REDEEM_CHECK_IN_OFFER:Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_10

    .line 3151
    :goto_1
    invoke-static {}, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->values()[Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/bp;->d:[I

    :try_start_2
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/bp;->d:[I

    sget-object v1, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->Reservation:Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_f

    :goto_2
    :try_start_3
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/bp;->d:[I

    sget-object v1, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->Platform:Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_e

    .line 3123
    :goto_3
    invoke-static {}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->values()[Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/bp;->c:[I

    :try_start_4
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/bp;->c:[I

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->CALL:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_d

    :goto_4
    :try_start_5
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/bp;->c:[I

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->DIRECTIONS:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_c

    :goto_5
    :try_start_6
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/bp;->c:[I

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MESSAGE_THE_BUSINESS:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_b

    :goto_6
    :try_start_7
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/bp;->c:[I

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MENU:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_a

    :goto_7
    :try_start_8
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/bp;->c:[I

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MAKE_RESERVATION:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_9

    :goto_8
    :try_start_9
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/bp;->c:[I

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->ORDER:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_8

    :goto_9
    :try_start_a
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/bp;->c:[I

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MOVIES:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_7

    :goto_a
    :try_start_b
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/bp;->c:[I

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MORE_INFO:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_6

    .line 3109
    :goto_b
    invoke-static {}, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->values()[Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/bp;->b:[I

    :try_start_c
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/bp;->b:[I

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->DEAL:Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_5

    :goto_c
    :try_start_d
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/bp;->b:[I

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->CHECK_IN_OFFER:Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_4

    :goto_d
    :try_start_e
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/bp;->b:[I

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->CALL_TO_ACTION:Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_3

    .line 1694
    :goto_e
    invoke-static {}, Lcom/yelp/android/appdata/BusinessContributionType;->values()[Lcom/yelp/android/appdata/BusinessContributionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/bp;->a:[I

    :try_start_f
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/bp;->a:[I

    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->BUSINESS_PHOTO:Lcom/yelp/android/appdata/BusinessContributionType;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/BusinessContributionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_2

    :goto_f
    :try_start_10
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/bp;->a:[I

    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/BusinessContributionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_1

    :goto_10
    :try_start_11
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/bp;->a:[I

    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->TIP:Lcom/yelp/android/appdata/BusinessContributionType;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/BusinessContributionType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_0

    :goto_11
    return-void

    :catch_0
    move-exception v0

    goto :goto_11

    :catch_1
    move-exception v0

    goto :goto_10

    :catch_2
    move-exception v0

    goto :goto_f

    .line 3109
    :catch_3
    move-exception v0

    goto :goto_e

    :catch_4
    move-exception v0

    goto :goto_d

    :catch_5
    move-exception v0

    goto :goto_c

    .line 3123
    :catch_6
    move-exception v0

    goto :goto_b

    :catch_7
    move-exception v0

    goto :goto_a

    :catch_8
    move-exception v0

    goto :goto_9

    :catch_9
    move-exception v0

    goto/16 :goto_8

    :catch_a
    move-exception v0

    goto/16 :goto_7

    :catch_b
    move-exception v0

    goto/16 :goto_6

    :catch_c
    move-exception v0

    goto/16 :goto_5

    :catch_d
    move-exception v0

    goto/16 :goto_4

    .line 3151
    :catch_e
    move-exception v0

    goto/16 :goto_3

    :catch_f
    move-exception v0

    goto/16 :goto_2

    .line 3161
    :catch_10
    move-exception v0

    goto/16 :goto_1

    :catch_11
    move-exception v0

    goto/16 :goto_0
.end method