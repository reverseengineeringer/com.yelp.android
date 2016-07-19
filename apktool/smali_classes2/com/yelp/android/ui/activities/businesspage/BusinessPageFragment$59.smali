.class synthetic Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;
.super Ljava/lang/Object;
.source "BusinessPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I

.field static final synthetic d:[I

.field static final synthetic e:[I

.field static final synthetic f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 4413
    invoke-static {}, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->values()[Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->f:[I

    :try_start_0
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->f:[I

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->REDEEM_DEAL:Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_12

    :goto_0
    :try_start_1
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->f:[I

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->REDEEM_CHECK_IN_OFFER:Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_11

    .line 4403
    :goto_1
    invoke-static {}, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->values()[Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->e:[I

    :try_start_2
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->e:[I

    sget-object v1, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->Reservation:Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_10

    :goto_2
    :try_start_3
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->e:[I

    sget-object v1, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->Platform:Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_f

    .line 4375
    :goto_3
    invoke-static {}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->values()[Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->d:[I

    :try_start_4
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->d:[I

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->CALL:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_e

    :goto_4
    :try_start_5
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->d:[I

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->DIRECTIONS:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_d

    :goto_5
    :try_start_6
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->d:[I

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MESSAGE_THE_BUSINESS:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_c

    :goto_6
    :try_start_7
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->d:[I

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MENU:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_b

    :goto_7
    :try_start_8
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->d:[I

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MAKE_RESERVATION:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_a

    :goto_8
    :try_start_9
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->d:[I

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->ORDER:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :goto_9
    :try_start_a
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->d:[I

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MOVIES:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_8

    :goto_a
    :try_start_b
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->d:[I

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MORE_INFO:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_7

    .line 4368
    :goto_b
    invoke-static {}, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;->values()[Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->c:[I

    :try_start_c
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->c:[I

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;->BIZPAGE_TOP:Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_6

    .line 4354
    :goto_c
    invoke-static {}, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->values()[Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->b:[I

    :try_start_d
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->b:[I

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->DEAL:Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_5

    :goto_d
    :try_start_e
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->b:[I

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->CHECK_IN_OFFER:Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_4

    :goto_e
    :try_start_f
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->b:[I

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->CALL_TO_ACTION:Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_3

    .line 2594
    :goto_f
    invoke-static {}, Lcom/yelp/android/appdata/BusinessContributionType;->values()[Lcom/yelp/android/appdata/BusinessContributionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->a:[I

    :try_start_10
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->a:[I

    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->BUSINESS_PHOTO:Lcom/yelp/android/appdata/BusinessContributionType;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/BusinessContributionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_2

    :goto_10
    :try_start_11
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->a:[I

    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/BusinessContributionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_1

    :goto_11
    :try_start_12
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->a:[I

    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->TIP:Lcom/yelp/android/appdata/BusinessContributionType;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/BusinessContributionType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_0

    :goto_12
    return-void

    :catch_0
    move-exception v0

    goto :goto_12

    :catch_1
    move-exception v0

    goto :goto_11

    :catch_2
    move-exception v0

    goto :goto_10

    .line 4354
    :catch_3
    move-exception v0

    goto :goto_f

    :catch_4
    move-exception v0

    goto :goto_e

    :catch_5
    move-exception v0

    goto :goto_d

    .line 4368
    :catch_6
    move-exception v0

    goto :goto_c

    .line 4375
    :catch_7
    move-exception v0

    goto :goto_b

    :catch_8
    move-exception v0

    goto/16 :goto_a

    :catch_9
    move-exception v0

    goto/16 :goto_9

    :catch_a
    move-exception v0

    goto/16 :goto_8

    :catch_b
    move-exception v0

    goto/16 :goto_7

    :catch_c
    move-exception v0

    goto/16 :goto_6

    :catch_d
    move-exception v0

    goto/16 :goto_5

    :catch_e
    move-exception v0

    goto/16 :goto_4

    .line 4403
    :catch_f
    move-exception v0

    goto/16 :goto_3

    :catch_10
    move-exception v0

    goto/16 :goto_2

    .line 4413
    :catch_11
    move-exception v0

    goto/16 :goto_1

    :catch_12
    move-exception v0

    goto/16 :goto_0
.end method
