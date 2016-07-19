.class public Lcom/yelp/android/appdata/webrequests/ApiException;
.super Lcom/yelp/android/appdata/webrequests/YelpException;
.source "ApiException.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ApiException;",
            ">;"
        }
    .end annotation
.end field

.field public static final YPAPICodeAccountUnconfirmed:I = 0xb

.field public static final YPAPICodeAlreadyFriend:I = 0x3eb

.field public static final YPAPICodeAreaTooLarge:I = 0xcb

.field public static final YPAPICodeBadBusinessId:I = 0xce

.field public static final YPAPICodeBadCategory:I = 0xcd

.field public static final YPAPICodeBadFindLocation:I = 0xca

.field public static final YPAPICodeBadLocation:I = 0x66

.field public static final YPAPICodeBadNeighborhood:I = 0xcc

.field public static final YPAPICodeBlockedUser:I = 0x3fd

.field public static final YPAPICodeCheckInOfferAlreadyUsed:I = 0x3fa

.field public static final YPAPICodeCheckInTooFarAway:I = 0x3f2

.field public static final YPAPICodeCheckInTooMany:I = 0x3f8

.field public static final YPAPICodeCheckInTooRecent:I = 0x3f3

.field public static final YPAPICodeCheckInTooRecentAtBusiness:I = 0x3f9

.field public static final YPAPICodeCheckInUserIsNotFriend:I = 0x400

.field public static final YPAPICodeCreditCardExpired:I = 0x4b2

.field public static final YPAPICodeDealStaleUpdateTimeError:I = 0x516

.field public static final YPAPICodeDuplicateRequest:I = 0x10

.field public static final YPAPICodeEmailAlreadyConfirmed:I = 0x192

.field public static final YPAPICodeEmailAlreadyExists:I = 0x191

.field public static final YPAPICodeEmailForDifferentUser:I = 0x194

.field public static final YPAPICodeEmailNoAccount:I = 0x190

.field public static final YPAPICodeFriendRequestNotFound:I = 0x3ed

.field public static final YPAPICodeFriendRequestPending:I = 0x3ec

.field public static final YPAPICodeGeneralError:I = 0x6

.field public static final YPAPICodeInvalidCharacter:I = 0xd0

.field public static final YPAPICodeInvalidCredentials:I = 0xa

.field public static final YPAPICodeInvalidParameter:I = 0xc

.field public static final YPAPICodeInvalidParametersPlural:I = 0x13

.field public static final YPAPICodeInvalidSessionToken:I = 0x9

.field public static final YPAPICodeInvalidSignature:I = 0xd

.field public static final YPAPICodeMissingParameter:I = 0x8

.field public static final YPAPICodeMultipleLocations:I = 0xd1

.field public static final YPAPICodeNoCountrySupport:I = 0x69

.field public static final YPAPICodeNotAvailable:I = 0x5

.field public static final YPAPICodeOK:I = 0x0

.field public static final YPAPICodeOperationLimitExceeded:I = 0x320

.field public static final YPAPICodeOperationUnsupported:I = 0xf

.field public static final YPAPICodeOtherUserTooPopular:I = 0x3e9

.field public static final YPAPICodePasswordTooLong:I = 0xe

.field public static final YPAPICodeSameUser:I = 0x3e8

.field public static final YPAPICodeSharingAlreadyShared:I = 0x3f7

.field public static final YPAPICodeSharingError:I = 0x3f6

.field public static final YPAPICodeSharingInvalidFacebookSession:I = 0x3f4

.field public static final YPAPICodeSharingInvalidTwitterSession:I = 0x3f5

.field public static final YPAPICodeSharingRequireFacebookPermission:I = 0x402

.field public static final YPAPICodeTalkNoCursing:I = 0x386

.field public static final YPAPICodeTalkRateLimited:I = 0x384

.field public static final YPAPICodeTalkTopicIsTooOldToReply:I = 0x387

.field public static final YPAPICodeTalkTopicRemoved:I = 0x388

.field public static final YPAPICodeTalkUserBanned:I = 0x385

.field public static final YPAPICodeTextTooLong:I = 0xcf

.field public static final YPAPICodeUnknown:I = -0x1

.field public static final YPAPICodeUnspecLocation:I = 0xc8

.field public static final YPAPICodeUpgrade:I = 0x7

.field public static final YPAPICodeUserAccountClosed:I = 0x3ee

.field public static final YPAPICodeUserTooPopular:I = 0x3ea

.field public static final YPAPIEventRsvpCannotModify:I = 0x6a4

.field private static final a:[I

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mMessage:Lorg/json/JSONObject;

.field private final mResultCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 85
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ApiException$1;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/ApiException$1;-><init>()V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/ApiException;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 305
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x10

    aput v2, v0, v1

    sput-object v0, Lcom/yelp/android/appdata/webrequests/ApiException;->a:[I

    .line 309
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiException;->a:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 310
    return-void
.end method

.method private constructor <init>(ILorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 41
    invoke-static {p1}, Lcom/yelp/android/appdata/webrequests/ApiException;->a(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    .line 42
    iput p1, p0, Lcom/yelp/android/appdata/webrequests/ApiException;->mResultCode:I

    .line 43
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/ApiException;->mMessage:Lorg/json/JSONObject;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(ILorg/json/JSONObject;Lcom/yelp/android/appdata/webrequests/ApiException$1;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/ApiException;-><init>(ILorg/json/JSONObject;)V

    return-void
.end method

.method private static a(I)I
    .locals 1

    .prologue
    .line 114
    sparse-switch p0, :sswitch_data_0

    .line 194
    const v0, 0x7f0700bf

    :goto_0
    return v0

    .line 116
    :sswitch_0
    const v0, 0x7f0700b1

    goto :goto_0

    .line 118
    :sswitch_1
    const v0, 0x7f0700a0

    goto :goto_0

    .line 120
    :sswitch_2
    const v0, 0x7f07009c

    goto :goto_0

    .line 122
    :sswitch_3
    const v0, 0x7f0700a1

    goto :goto_0

    .line 124
    :sswitch_4
    const v0, 0x7f07009e

    goto :goto_0

    .line 126
    :sswitch_5
    const v0, 0x7f0700c0

    goto :goto_0

    .line 128
    :sswitch_6
    const v0, 0x7f07009f

    goto :goto_0

    .line 130
    :sswitch_7
    const v0, 0x7f07009d

    goto :goto_0

    .line 132
    :sswitch_8
    const v0, 0x7f0700b0

    goto :goto_0

    .line 134
    :sswitch_9
    const v0, 0x7f0700c1

    goto :goto_0

    .line 136
    :sswitch_a
    const v0, 0x7f0700ae

    goto :goto_0

    .line 138
    :sswitch_b
    const v0, 0x7f0700ac

    goto :goto_0

    .line 140
    :sswitch_c
    const v0, 0x7f07009a

    goto :goto_0

    .line 142
    :sswitch_d
    const v0, 0x7f0700b5

    goto :goto_0

    .line 144
    :sswitch_e
    const v0, 0x7f0700a8

    goto :goto_0

    .line 146
    :sswitch_f
    const v0, 0x7f0700a7

    goto :goto_0

    .line 148
    :sswitch_10
    const v0, 0x7f0700b2

    goto :goto_0

    .line 150
    :sswitch_11
    const v0, 0x7f0700b8

    goto :goto_0

    .line 152
    :sswitch_12
    const v0, 0x7f0700b9

    goto :goto_0

    .line 154
    :sswitch_13
    const v0, 0x7f0700bc

    goto :goto_0

    .line 156
    :sswitch_14
    const v0, 0x7f0700ba

    goto :goto_0

    .line 158
    :sswitch_15
    const v0, 0x7f0700bb

    goto :goto_0

    .line 160
    :sswitch_16
    const v0, 0x7f0700bd

    goto :goto_0

    .line 162
    :sswitch_17
    const v0, 0x7f0700aa

    goto :goto_0

    .line 164
    :sswitch_18
    const v0, 0x7f0700a2

    goto :goto_0

    .line 166
    :sswitch_19
    const v0, 0x7f0700a4

    goto :goto_0

    .line 168
    :sswitch_1a
    const v0, 0x7f0700a3

    goto :goto_0

    .line 170
    :sswitch_1b
    const v0, 0x7f0700ad

    goto :goto_0

    .line 172
    :sswitch_1c
    const v0, 0x7f0700af

    goto :goto_0

    .line 174
    :sswitch_1d
    const v0, 0x7f0700b7

    goto :goto_0

    .line 176
    :sswitch_1e
    const v0, 0x7f0700b4

    goto :goto_0

    .line 178
    :sswitch_1f
    const v0, 0x7f0700c3

    goto :goto_0

    .line 180
    :sswitch_20
    const v0, 0x7f07009b

    goto/16 :goto_0

    .line 182
    :sswitch_21
    const v0, 0x7f0700b6

    goto/16 :goto_0

    .line 184
    :sswitch_22
    const v0, 0x7f0700a9

    goto/16 :goto_0

    .line 186
    :sswitch_23
    const v0, 0x7f0700b3

    goto/16 :goto_0

    .line 188
    :sswitch_24
    const v0, 0x7f0700a5

    goto/16 :goto_0

    .line 190
    :sswitch_25
    const v0, 0x7f0700c2

    goto/16 :goto_0

    .line 192
    :sswitch_26
    const v0, 0x7f0700ce

    goto/16 :goto_0

    .line 114
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x7 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_23
        0x66 -> :sswitch_1
        0x69 -> :sswitch_26
        0xc8 -> :sswitch_5
        0xca -> :sswitch_6
        0xcb -> :sswitch_2
        0xcc -> :sswitch_3
        0xcd -> :sswitch_4
        0xce -> :sswitch_7
        0xcf -> :sswitch_16
        0xd0 -> :sswitch_17
        0xd1 -> :sswitch_8
        0x190 -> :sswitch_e
        0x191 -> :sswitch_f
        0x320 -> :sswitch_10
        0x384 -> :sswitch_12
        0x385 -> :sswitch_13
        0x386 -> :sswitch_11
        0x387 -> :sswitch_14
        0x388 -> :sswitch_15
        0x3e9 -> :sswitch_1e
        0x3ea -> :sswitch_1f
        0x3eb -> :sswitch_20
        0x3ec -> :sswitch_22
        0x3ed -> :sswitch_21
        0x3ee -> :sswitch_25
        0x3f2 -> :sswitch_18
        0x3f3 -> :sswitch_19
        0x3f4 -> :sswitch_1b
        0x3f5 -> :sswitch_1c
        0x3f6 -> :sswitch_1d
        0x3f8 -> :sswitch_1a
        0x3f9 -> :sswitch_24
    .end sparse-switch
.end method

.method public static final getExceptionForCode(ILorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/ApiException;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ApiException;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/appdata/webrequests/ApiException;-><init>(ILorg/json/JSONObject;)V

    .line 207
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiException;->a:[I

    invoke-static {v1, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_0

    .line 208
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiException;->setIsRecoverable(Z)V

    .line 210
    :cond_0
    return-object v0
.end method

.method public static isUserBlocked(Lcom/yelp/android/appdata/webrequests/YelpException;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 33
    instance-of v1, p0, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-eqz v1, :cond_0

    .line 34
    check-cast p0, Lcom/yelp/android/appdata/webrequests/ApiException;

    .line 35
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v1

    const/16 v2, 0x3fd

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 37
    :cond_0
    return v0
.end method


# virtual methods
.method public getMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiException;->mMessage:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiException;->mMessage:Lorg/json/JSONObject;

    const-string/jumbo v1, "localized_description"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiException;->mMessage:Lorg/json/JSONObject;

    const-string/jumbo v1, "localized_description"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiException;->mMessage:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 71
    :cond_1
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/ApiException;->mResultCode:I

    const/16 v1, 0xd0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiException;->mMessage:Lorg/json/JSONObject;

    const-string/jumbo v1, "char"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiException;->mMessage:Lorg/json/JSONObject;

    const-string/jumbo v1, "char"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    const v1, 0x7f0700ab

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_2
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/ApiException;->mResultCode:I

    return v0
.end method

.method public getServerMessage()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiException;->mMessage:Lorg/json/JSONObject;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/ApiException;->mResultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiException;->mMessage:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiException;->mMessage:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
