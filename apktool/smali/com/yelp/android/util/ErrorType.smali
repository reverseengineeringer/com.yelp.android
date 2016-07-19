.class public final enum Lcom/yelp/android/util/ErrorType;
.super Ljava/lang/Enum;
.source "ErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/util/ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/util/ErrorType;

.field public static final enum ADD_CREDIT_CARD_NOT_SUPPORTED:Lcom/yelp/android/util/ErrorType;

.field public static final enum CONNECTION_ERROR:Lcom/yelp/android/util/ErrorType;

.field public static final enum GENERIC_ERROR:Lcom/yelp/android/util/ErrorType;

.field public static final enum LOCATION_SERVICES_DISABLED:Lcom/yelp/android/util/ErrorType;

.field public static final enum NEED_FRIENDS_COMPOSE_MESSAGE:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_BOOKMARKS:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_CONNECTION:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_CONVERSATIONS:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_COUNTRY_SUPPORT:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_DEALS:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_DRAFTS:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_ERROR:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_EVENT:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_EVENTS:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_FEED_ITEMS_FIND_FRIENDS:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_FEED_ITEMS_FOLLOWING:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_FEED_ITEMS_NEARBY:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_FEED_ITEMS_NO_FRIENDS:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_FRIENDS:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_FRIENDS_IN_CONTACTS:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_FRIEND_ACTIVITIES:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_FRIEND_CHECKINS:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_LOCATION:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_LOCATION_PERMISSION:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_NEARBY_CHECKINS:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_NOTIFICATIONS:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_PREV_SEARCH:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_RESULTS:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_ROYALTY:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_TALK_LOCATION:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_TALK_TOPICS:Lcom/yelp/android/util/ErrorType;

.field public static final enum UNCONFIRMED_ACCOUNT:Lcom/yelp/android/util/ErrorType;


# instance fields
.field private mButtonTextId:I

.field private mImageId:I

.field private mImportance:I

.field private mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const v13, 0x7f020226

    const v12, 0x7f020227

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v1, "NO_CONNECTION"

    const v3, 0x7f020221

    const v4, 0x7f07043d

    const/4 v5, 0x7

    const v6, 0x7f070505

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/util/ErrorType;->NO_CONNECTION:Lcom/yelp/android/util/ErrorType;

    .line 24
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "NO_LOCATION_PERMISSION"

    const/4 v5, 0x1

    const v7, 0x7f0703a7

    const/4 v8, 0x6

    const v9, 0x7f070293

    move v6, v12

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->NO_LOCATION_PERMISSION:Lcom/yelp/android/util/ErrorType;

    .line 29
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "NO_LOCATION"

    const v6, 0x7f020220

    const v7, 0x7f070380

    const/4 v8, 0x5

    const v9, 0x7f070505

    move v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->NO_LOCATION:Lcom/yelp/android/util/ErrorType;

    .line 30
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "NO_COUNTRY_SUPPORT"

    const v7, 0x7f0700ce

    const/4 v8, 0x5

    move v5, v11

    move v6, v12

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->NO_COUNTRY_SUPPORT:Lcom/yelp/android/util/ErrorType;

    .line 31
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "NO_TALK_LOCATION"

    const/4 v5, 0x4

    const v6, 0x7f020220

    const v7, 0x7f0705bd

    const/4 v8, 0x5

    const v9, 0x7f070409

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->NO_TALK_LOCATION:Lcom/yelp/android/util/ErrorType;

    .line 32
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "CONNECTION_ERROR"

    const/4 v5, 0x5

    const v6, 0x7f020221

    const v7, 0x7f070591

    const/4 v8, 0x4

    const v9, 0x7f070505

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->CONNECTION_ERROR:Lcom/yelp/android/util/ErrorType;

    .line 34
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "UNCONFIRMED_ACCOUNT"

    const/4 v5, 0x6

    const v7, 0x7f07061d

    move v6, v2

    move v8, v11

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->UNCONFIRMED_ACCOUNT:Lcom/yelp/android/util/ErrorType;

    .line 35
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "NO_RESULTS"

    const/4 v5, 0x7

    const v7, 0x7f070432

    move v6, v12

    move v8, v11

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->NO_RESULTS:Lcom/yelp/android/util/ErrorType;

    .line 36
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "NO_PREV_SEARCH"

    const/16 v5, 0x8

    const v7, 0x7f07060b

    move v6, v12

    move v8, v11

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->NO_PREV_SEARCH:Lcom/yelp/android/util/ErrorType;

    .line 37
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "NO_BOOKMARKS"

    const/16 v5, 0x9

    const v7, 0x7f070290

    move v6, v12

    move v8, v11

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->NO_BOOKMARKS:Lcom/yelp/android/util/ErrorType;

    .line 38
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "NO_DEALS"

    const/16 v5, 0xa

    const v7, 0x7f070421

    move v6, v12

    move v8, v11

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->NO_DEALS:Lcom/yelp/android/util/ErrorType;

    .line 39
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "NO_DRAFTS"

    const/16 v5, 0xb

    const v7, 0x7f0703f3

    const v9, 0x7f070662

    move v6, v12

    move v8, v11

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->NO_DRAFTS:Lcom/yelp/android/util/ErrorType;

    .line 40
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "LOCATION_SERVICES_DISABLED"

    const/16 v5, 0xc

    const v6, 0x7f020220

    const v7, 0x7f0700da

    move v8, v11

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->LOCATION_SERVICES_DISABLED:Lcom/yelp/android/util/ErrorType;

    .line 42
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "NO_CONVERSATIONS"

    const/16 v5, 0xd

    const v6, 0x7f02021c

    const v7, 0x7f070420

    move v8, v10

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->NO_CONVERSATIONS:Lcom/yelp/android/util/ErrorType;

    .line 43
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "NO_EVENT"

    const/16 v5, 0xe

    const v7, 0x7f070423

    move v6, v13

    move v8, v10

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->NO_EVENT:Lcom/yelp/android/util/ErrorType;

    .line 44
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "NO_EVENTS"

    const/16 v5, 0xf

    const v7, 0x7f070424

    move v6, v13

    move v8, v10

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->NO_EVENTS:Lcom/yelp/android/util/ErrorType;

    .line 45
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "NO_FRIENDS"

    const/16 v5, 0x10

    const v6, 0x7f020222

    const v7, 0x7f070426

    const v9, 0x7f0702cd

    move v8, v10

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->NO_FRIENDS:Lcom/yelp/android/util/ErrorType;

    .line 50
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "NO_FRIENDS_IN_CONTACTS"

    const/16 v5, 0x11

    const v7, 0x7f070425

    move v6, v12

    move v8, v10

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->NO_FRIENDS_IN_CONTACTS:Lcom/yelp/android/util/ErrorType;

    .line 51
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "NO_FEED_ITEMS_NEARBY"

    const/16 v5, 0x12

    const v7, 0x7f07040b

    move v6, v2

    move v8, v10

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->NO_FEED_ITEMS_NEARBY:Lcom/yelp/android/util/ErrorType;

    .line 52
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "NO_FEED_ITEMS_FOLLOWING"

    const/16 v5, 0x13

    const v7, 0x7f0702e7

    move v6, v2

    move v8, v10

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->NO_FEED_ITEMS_FOLLOWING:Lcom/yelp/android/util/ErrorType;

    .line 53
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "NO_FEED_ITEMS_NO_FRIENDS"

    const/16 v5, 0x14

    const v7, 0x7f0702ef

    const v9, 0x7f0702cd

    move v6, v2

    move v8, v10

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->NO_FEED_ITEMS_NO_FRIENDS:Lcom/yelp/android/util/ErrorType;

    .line 55
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "NO_FEED_ITEMS_FIND_FRIENDS"

    const/16 v5, 0x15

    const v7, 0x7f0702ee

    const v9, 0x7f0702cd

    move v6, v2

    move v8, v10

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->NO_FEED_ITEMS_FIND_FRIENDS:Lcom/yelp/android/util/ErrorType;

    .line 56
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "NO_NOTIFICATIONS"

    const/16 v5, 0x16

    const v6, 0x7f02021c

    const v7, 0x7f07042e

    const v9, 0x7f0702cd

    move v8, v10

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->NO_NOTIFICATIONS:Lcom/yelp/android/util/ErrorType;

    .line 61
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "NO_FRIEND_CHECKINS"

    const/16 v5, 0x17

    const v7, 0x7f0700dd

    move v6, v13

    move v8, v10

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->NO_FRIEND_CHECKINS:Lcom/yelp/android/util/ErrorType;

    .line 62
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "NO_FRIEND_ACTIVITIES"

    const/16 v5, 0x18

    const v6, 0x7f020222

    const v7, 0x7f0700dd

    const v9, 0x7f0702cd

    move v8, v10

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->NO_FRIEND_ACTIVITIES:Lcom/yelp/android/util/ErrorType;

    .line 64
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "NO_ROYALTY"

    const/16 v5, 0x19

    const v7, 0x7f0700de

    move v6, v13

    move v8, v10

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->NO_ROYALTY:Lcom/yelp/android/util/ErrorType;

    .line 65
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "NO_NEARBY_CHECKINS"

    const/16 v5, 0x1a

    const v7, 0x7f070653

    move v6, v13

    move v8, v10

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->NO_NEARBY_CHECKINS:Lcom/yelp/android/util/ErrorType;

    .line 66
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "NO_TALK_TOPICS"

    const/16 v5, 0x1b

    const v7, 0x7f07068e

    move v6, v13

    move v8, v10

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->NO_TALK_TOPICS:Lcom/yelp/android/util/ErrorType;

    .line 67
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "NEED_FRIENDS_COMPOSE_MESSAGE"

    const/16 v5, 0x1c

    const v6, 0x7f020222

    const v7, 0x7f07040d

    const v9, 0x7f0702cd

    move v8, v10

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->NEED_FRIENDS_COMPOSE_MESSAGE:Lcom/yelp/android/util/ErrorType;

    .line 72
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "ADD_CREDIT_CARD_NOT_SUPPORTED"

    const/16 v5, 0x1d

    const v7, 0x7f0706c0

    const/4 v8, 0x1

    const v9, 0x7f070450

    move v6, v13

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->ADD_CREDIT_CARD_NOT_SUPPORTED:Lcom/yelp/android/util/ErrorType;

    .line 77
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "GENERIC_ERROR"

    const/16 v5, 0x1e

    const v6, 0x7f020221

    const v7, 0x7f07061f

    const/4 v8, 0x1

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->GENERIC_ERROR:Lcom/yelp/android/util/ErrorType;

    .line 78
    new-instance v3, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v4, "NO_ERROR"

    const/16 v5, 0x1f

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/ErrorType;->NO_ERROR:Lcom/yelp/android/util/ErrorType;

    .line 15
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/yelp/android/util/ErrorType;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_CONNECTION:Lcom/yelp/android/util/ErrorType;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_LOCATION_PERMISSION:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_LOCATION:Lcom/yelp/android/util/ErrorType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_COUNTRY_SUPPORT:Lcom/yelp/android/util/ErrorType;

    aput-object v1, v0, v11

    const/4 v1, 0x4

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_TALK_LOCATION:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/util/ErrorType;->CONNECTION_ERROR:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/util/ErrorType;->UNCONFIRMED_ACCOUNT:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_RESULTS:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_PREV_SEARCH:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_BOOKMARKS:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_DEALS:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_DRAFTS:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/yelp/android/util/ErrorType;->LOCATION_SERVICES_DISABLED:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_CONVERSATIONS:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_EVENT:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_EVENTS:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_FRIENDS:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_FRIENDS_IN_CONTACTS:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_FEED_ITEMS_NEARBY:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_FEED_ITEMS_FOLLOWING:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_FEED_ITEMS_NO_FRIENDS:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_FEED_ITEMS_FIND_FRIENDS:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_NOTIFICATIONS:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_FRIEND_CHECKINS:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_FRIEND_ACTIVITIES:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_ROYALTY:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_NEARBY_CHECKINS:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_TALK_TOPICS:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NEED_FRIENDS_COMPOSE_MESSAGE:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/yelp/android/util/ErrorType;->ADD_CREDIT_CARD_NOT_SUPPORTED:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/yelp/android/util/ErrorType;->GENERIC_ERROR:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_ERROR:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/util/ErrorType;->$VALUES:[Lcom/yelp/android/util/ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput p3, p0, Lcom/yelp/android/util/ErrorType;->mImageId:I

    .line 95
    iput p4, p0, Lcom/yelp/android/util/ErrorType;->mTextId:I

    .line 96
    iput p5, p0, Lcom/yelp/android/util/ErrorType;->mImportance:I

    .line 97
    iput p6, p0, Lcom/yelp/android/util/ErrorType;->mButtonTextId:I

    .line 98
    return-void
.end method

.method public static getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessageResource()I

    move-result v0

    .line 104
    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorNotConnectedToInternet:I

    if-eq v0, v1, :cond_0

    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorCannotConnectToHost:I

    if-ne v0, v1, :cond_1

    .line 106
    :cond_0
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_CONNECTION:Lcom/yelp/android/util/ErrorType;

    .line 135
    :goto_0
    return-object v0

    .line 108
    :cond_1
    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorLocationServicesDisabled:I

    if-eq v0, v1, :cond_2

    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorCheckInNoLocation:I

    if-ne v0, v1, :cond_4

    .line 110
    :cond_2
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/k;->b(Landroid/content/Context;Lcom/yelp/android/appdata/PermissionGroup;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_LOCATION_PERMISSION:Lcom/yelp/android/util/ErrorType;

    goto :goto_0

    .line 114
    :cond_3
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_LOCATION:Lcom/yelp/android/util/ErrorType;

    goto :goto_0

    .line 116
    :cond_4
    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerResourceNotFound:I

    if-eq v0, v1, :cond_5

    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerMaintenance:I

    if-eq v0, v1, :cond_5

    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerResponse:I

    if-ne v0, v1, :cond_6

    .line 119
    :cond_5
    sget-object v0, Lcom/yelp/android/util/ErrorType;->CONNECTION_ERROR:Lcom/yelp/android/util/ErrorType;

    goto :goto_0

    .line 120
    :cond_6
    const/16 v1, 0xb

    if-ne v0, v1, :cond_7

    .line 121
    sget-object v0, Lcom/yelp/android/util/ErrorType;->UNCONFIRMED_ACCOUNT:Lcom/yelp/android/util/ErrorType;

    goto :goto_0

    .line 122
    :cond_7
    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorCountryNotSupported:I

    if-ne v0, v1, :cond_8

    .line 123
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_COUNTRY_SUPPORT:Lcom/yelp/android/util/ErrorType;

    goto :goto_0

    .line 125
    :cond_8
    instance-of v0, p0, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-eqz v0, :cond_9

    move-object v0, p0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiException;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v0

    invoke-static {v0}, Lcom/yelp/android/util/ErrorType;->shouldRequestLocationPermission(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 128
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_LOCATION_PERMISSION:Lcom/yelp/android/util/ErrorType;

    goto :goto_0

    .line 130
    :cond_9
    sget-object v0, Lcom/yelp/android/util/ErrorType;->GENERIC_ERROR:Lcom/yelp/android/util/ErrorType;

    .line 131
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessageResource()I

    move-result v1

    iput v1, v0, Lcom/yelp/android/util/ErrorType;->mTextId:I

    goto :goto_0
.end method

.method private static shouldRequestLocationPermission(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-static {v1, v2}, Lcom/yelp/android/appdata/k;->a(Landroid/content/Context;Lcom/yelp/android/appdata/PermissionGroup;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x66

    if-eq p0, v1, :cond_2

    const/16 v1, 0x8

    if-ne p0, v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/util/ErrorType;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/yelp/android/util/ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/util/ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/util/ErrorType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/yelp/android/util/ErrorType;->$VALUES:[Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0}, [Lcom/yelp/android/util/ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/util/ErrorType;

    return-object v0
.end method


# virtual methods
.method public buildAdapter(Landroid/content/Context;)Landroid/widget/BaseAdapter;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Lcom/yelp/android/ui/util/e;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    .line 149
    new-instance v1, Lcom/yelp/android/ui/panels/PanelError;

    invoke-direct {v1, p1}, Lcom/yelp/android/ui/panels/PanelError;-><init>(Landroid/content/Context;)V

    .line 150
    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/PanelError;->a()V

    .line 151
    invoke-virtual {v1, p0}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 152
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    .line 154
    return-object v0
.end method

.method public getButtonTextId()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/yelp/android/util/ErrorType;->mButtonTextId:I

    return v0
.end method

.method public getImageId()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/yelp/android/util/ErrorType;->mImageId:I

    return v0
.end method

.method public getImportance()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/yelp/android/util/ErrorType;->mImportance:I

    return v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/yelp/android/util/ErrorType;->mTextId:I

    return v0
.end method

.method public isMoreImportant(Lcom/yelp/android/util/ErrorType;)Z
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/yelp/android/util/ErrorType;->getImportance()I

    move-result v0

    invoke-virtual {p1}, Lcom/yelp/android/util/ErrorType;->getImportance()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
