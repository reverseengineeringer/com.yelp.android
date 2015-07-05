.class public final enum Lcom/yelp/android/util/ErrorType;
.super Ljava/lang/Enum;
.source "ErrorType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/util/ErrorType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/util/ErrorType;

.field public static final enum ADD_CREDIT_CARD_NOT_SUPPORTED:Lcom/yelp/android/util/ErrorType;

.field public static final enum CONNECTION_ERROR:Lcom/yelp/android/util/ErrorType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/util/ErrorType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum GENERIC_ERROR:Lcom/yelp/android/util/ErrorType;

.field public static final enum LOCATION_SERVICES_DISABLED:Lcom/yelp/android/util/ErrorType;

.field public static final enum NEED_FRIENDS_COMPOSE_MESSAGE:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_BOOKMARKS:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_CONNECTION:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_CONVERSATIONS:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_COUNTRY_SUPPORT:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_DEALS:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_ERROR:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_EVENT:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_EVENTS:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_FEED_ITEMS:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_FRIENDS:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_FRIEND_ACTIVITIES:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_FRIEND_CHECKINS:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_LOCATION:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_NEARBY_CHECKINS:Lcom/yelp/android/util/ErrorType;

.field public static final enum NO_NOTIFICIATIONS:Lcom/yelp/android/util/ErrorType;

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
    .locals 7

    .prologue
    .line 21
    new-instance v0, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v1, "NO_CONNECTION"

    const/4 v2, 0x0

    const v3, 0x7f02019c

    const v4, 0x7f070405

    const/4 v5, 0x6

    const v6, 0x7f070500

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/util/ErrorType;->NO_CONNECTION:Lcom/yelp/android/util/ErrorType;

    .line 23
    new-instance v0, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v1, "NO_LOCATION"

    const/4 v2, 0x1

    const v3, 0x7f02019b

    const v4, 0x7f070345

    const/4 v5, 0x5

    const v6, 0x7f070500

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/util/ErrorType;->NO_LOCATION:Lcom/yelp/android/util/ErrorType;

    .line 24
    new-instance v0, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v1, "NO_COUNTRY_SUPPORT"

    const/4 v2, 0x2

    const v3, 0x7f0201a2

    const v4, 0x7f070046

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/util/ErrorType;->NO_COUNTRY_SUPPORT:Lcom/yelp/android/util/ErrorType;

    .line 25
    new-instance v0, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v1, "NO_TALK_LOCATION"

    const/4 v2, 0x3

    const v3, 0x7f02019b

    const v4, 0x7f0705d5

    const/4 v5, 0x5

    const v6, 0x7f0703d7

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/util/ErrorType;->NO_TALK_LOCATION:Lcom/yelp/android/util/ErrorType;

    .line 26
    new-instance v0, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v1, "CONNECTION_ERROR"

    const/4 v2, 0x4

    const v3, 0x7f02019c

    const v4, 0x7f070588

    const/4 v5, 0x4

    const v6, 0x7f070500

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/util/ErrorType;->CONNECTION_ERROR:Lcom/yelp/android/util/ErrorType;

    .line 28
    new-instance v0, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v1, "UNCONFIRMED_ACCOUNT"

    const/4 v2, 0x5

    const/4 v3, 0x0

    const v4, 0x7f07063b

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/util/ErrorType;->UNCONFIRMED_ACCOUNT:Lcom/yelp/android/util/ErrorType;

    .line 29
    new-instance v0, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v1, "NO_RESULTS"

    const/4 v2, 0x6

    const v3, 0x7f0201a2

    const v4, 0x7f0703fb

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/util/ErrorType;->NO_RESULTS:Lcom/yelp/android/util/ErrorType;

    .line 30
    new-instance v0, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v1, "NO_PREV_SEARCH"

    const/4 v2, 0x7

    const v3, 0x7f0201a2

    const v4, 0x7f07061f

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/util/ErrorType;->NO_PREV_SEARCH:Lcom/yelp/android/util/ErrorType;

    .line 31
    new-instance v0, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v1, "NO_BOOKMARKS"

    const/16 v2, 0x8

    const v3, 0x7f0201a2

    const v4, 0x7f07023d

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/util/ErrorType;->NO_BOOKMARKS:Lcom/yelp/android/util/ErrorType;

    .line 32
    new-instance v0, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v1, "NO_DEALS"

    const/16 v2, 0x9

    const v3, 0x7f0201a2

    const v4, 0x7f0703ed

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/util/ErrorType;->NO_DEALS:Lcom/yelp/android/util/ErrorType;

    .line 33
    new-instance v0, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v1, "LOCATION_SERVICES_DISABLED"

    const/16 v2, 0xa

    const v3, 0x7f02019b

    const v4, 0x7f070052

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/util/ErrorType;->LOCATION_SERVICES_DISABLED:Lcom/yelp/android/util/ErrorType;

    .line 34
    new-instance v0, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v1, "NO_CONVERSATIONS"

    const/16 v2, 0xb

    const v3, 0x7f02019a

    const v4, 0x7f0703ec

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/util/ErrorType;->NO_CONVERSATIONS:Lcom/yelp/android/util/ErrorType;

    .line 35
    new-instance v0, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v1, "NO_EVENT"

    const/16 v2, 0xc

    const v3, 0x7f0201a1

    const v4, 0x7f0703ee

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/util/ErrorType;->NO_EVENT:Lcom/yelp/android/util/ErrorType;

    .line 36
    new-instance v0, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v1, "NO_EVENTS"

    const/16 v2, 0xd

    const v3, 0x7f0201a1

    const v4, 0x7f0703ef

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/util/ErrorType;->NO_EVENTS:Lcom/yelp/android/util/ErrorType;

    .line 37
    new-instance v0, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v1, "NO_FRIENDS"

    const/16 v2, 0xe

    const v3, 0x7f02019d

    const v4, 0x7f0703f1

    const/4 v5, 0x2

    const v6, 0x7f07027b

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/util/ErrorType;->NO_FRIENDS:Lcom/yelp/android/util/ErrorType;

    .line 39
    new-instance v0, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v1, "NO_FEED_ITEMS"

    const/16 v2, 0xf

    const v3, 0x7f0201a1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/util/ErrorType;->NO_FEED_ITEMS:Lcom/yelp/android/util/ErrorType;

    .line 41
    new-instance v0, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v1, "NO_NOTIFICIATIONS"

    const/16 v2, 0x10

    const v3, 0x7f02019a

    const v4, 0x7f0703f6

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/util/ErrorType;->NO_NOTIFICIATIONS:Lcom/yelp/android/util/ErrorType;

    .line 42
    new-instance v0, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v1, "NO_FRIEND_CHECKINS"

    const/16 v2, 0x11

    const v3, 0x7f0201a1

    const v4, 0x7f070055

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/util/ErrorType;->NO_FRIEND_CHECKINS:Lcom/yelp/android/util/ErrorType;

    .line 43
    new-instance v0, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v1, "NO_FRIEND_ACTIVITIES"

    const/16 v2, 0x12

    const v3, 0x7f02019d

    const v4, 0x7f070055

    const/4 v5, 0x2

    const v6, 0x7f07027b

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/util/ErrorType;->NO_FRIEND_ACTIVITIES:Lcom/yelp/android/util/ErrorType;

    .line 44
    new-instance v0, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v1, "NO_ROYALTY"

    const/16 v2, 0x13

    const v3, 0x7f0201a1

    const v4, 0x7f070056

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/util/ErrorType;->NO_ROYALTY:Lcom/yelp/android/util/ErrorType;

    .line 45
    new-instance v0, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v1, "NO_NEARBY_CHECKINS"

    const/16 v2, 0x14

    const v3, 0x7f0201a1

    const v4, 0x7f070674

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/util/ErrorType;->NO_NEARBY_CHECKINS:Lcom/yelp/android/util/ErrorType;

    .line 46
    new-instance v0, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v1, "NO_TALK_TOPICS"

    const/16 v2, 0x15

    const v3, 0x7f0201a1

    const v4, 0x7f0706be

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/util/ErrorType;->NO_TALK_TOPICS:Lcom/yelp/android/util/ErrorType;

    .line 47
    new-instance v0, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v1, "NEED_FRIENDS_COMPOSE_MESSAGE"

    const/16 v2, 0x16

    const v3, 0x7f02019d

    const v4, 0x7f0703db

    const/4 v5, 0x2

    const v6, 0x7f07027b

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/util/ErrorType;->NEED_FRIENDS_COMPOSE_MESSAGE:Lcom/yelp/android/util/ErrorType;

    .line 50
    new-instance v0, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v1, "ADD_CREDIT_CARD_NOT_SUPPORTED"

    const/16 v2, 0x17

    const v3, 0x7f0201a1

    const v4, 0x7f0700a2

    const/4 v5, 0x1

    const v6, 0x7f07041c

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/util/ErrorType;->ADD_CREDIT_CARD_NOT_SUPPORTED:Lcom/yelp/android/util/ErrorType;

    .line 52
    new-instance v0, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v1, "GENERIC_ERROR"

    const/16 v2, 0x18

    const v3, 0x7f02019c

    const v4, 0x7f070643

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/util/ErrorType;->GENERIC_ERROR:Lcom/yelp/android/util/ErrorType;

    .line 53
    new-instance v0, Lcom/yelp/android/util/ErrorType;

    const-string/jumbo v1, "NO_ERROR"

    const/16 v2, 0x19

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/ErrorType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/util/ErrorType;->NO_ERROR:Lcom/yelp/android/util/ErrorType;

    .line 14
    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/yelp/android/util/ErrorType;

    const/4 v1, 0x0

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_CONNECTION:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_LOCATION:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_COUNTRY_SUPPORT:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_TALK_LOCATION:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/yelp/android/util/ErrorType;->CONNECTION_ERROR:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/util/ErrorType;->UNCONFIRMED_ACCOUNT:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_RESULTS:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_PREV_SEARCH:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_BOOKMARKS:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_DEALS:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yelp/android/util/ErrorType;->LOCATION_SERVICES_DISABLED:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_CONVERSATIONS:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_EVENT:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_EVENTS:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_FRIENDS:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_FEED_ITEMS:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_NOTIFICIATIONS:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_FRIEND_CHECKINS:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_FRIEND_ACTIVITIES:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_ROYALTY:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_NEARBY_CHECKINS:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_TALK_TOPICS:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NEED_FRIENDS_COMPOSE_MESSAGE:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/yelp/android/util/ErrorType;->ADD_CREDIT_CARD_NOT_SUPPORTED:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/yelp/android/util/ErrorType;->GENERIC_ERROR:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_ERROR:Lcom/yelp/android/util/ErrorType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/util/ErrorType;->$VALUES:[Lcom/yelp/android/util/ErrorType;

    .line 144
    new-instance v0, Lcom/yelp/android/util/k;

    invoke-direct {v0}, Lcom/yelp/android/util/k;-><init>()V

    sput-object v0, Lcom/yelp/android/util/ErrorType;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput p3, p0, Lcom/yelp/android/util/ErrorType;->mImageId:I

    .line 71
    iput p4, p0, Lcom/yelp/android/util/ErrorType;->mTextId:I

    .line 72
    iput p5, p0, Lcom/yelp/android/util/ErrorType;->mImportance:I

    .line 73
    iput p6, p0, Lcom/yelp/android/util/ErrorType;->mButtonTextId:I

    .line 74
    return-void
.end method

.method public static getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessageResource()I

    move-result v0

    .line 80
    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorNotConnectedToInternet:I

    if-eq v0, v1, :cond_0

    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorCannotConnectToHost:I

    if-ne v0, v1, :cond_1

    .line 82
    :cond_0
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_CONNECTION:Lcom/yelp/android/util/ErrorType;

    .line 101
    :goto_0
    return-object v0

    .line 84
    :cond_1
    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorLocationServicesDisabled:I

    if-eq v0, v1, :cond_2

    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorCheckInNoLocation:I

    if-ne v0, v1, :cond_3

    .line 86
    :cond_2
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_LOCATION:Lcom/yelp/android/util/ErrorType;

    goto :goto_0

    .line 88
    :cond_3
    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerResourceNotFound:I

    if-eq v0, v1, :cond_4

    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerMaintenance:I

    if-eq v0, v1, :cond_4

    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerResponse:I

    if-ne v0, v1, :cond_5

    .line 91
    :cond_4
    sget-object v0, Lcom/yelp/android/util/ErrorType;->CONNECTION_ERROR:Lcom/yelp/android/util/ErrorType;

    goto :goto_0

    .line 92
    :cond_5
    const/16 v1, 0xb

    if-ne v0, v1, :cond_6

    .line 93
    sget-object v0, Lcom/yelp/android/util/ErrorType;->UNCONFIRMED_ACCOUNT:Lcom/yelp/android/util/ErrorType;

    goto :goto_0

    .line 94
    :cond_6
    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorCountryNotSupported:I

    if-ne v0, v1, :cond_7

    .line 95
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_COUNTRY_SUPPORT:Lcom/yelp/android/util/ErrorType;

    goto :goto_0

    .line 97
    :cond_7
    sget-object v0, Lcom/yelp/android/util/ErrorType;->GENERIC_ERROR:Lcom/yelp/android/util/ErrorType;

    .line 98
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessageResource()I

    move-result v1

    iput v1, v0, Lcom/yelp/android/util/ErrorType;->mTextId:I

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/util/ErrorType;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/yelp/android/util/ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/util/ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/util/ErrorType;
    .locals 1

    .prologue
    .line 14
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
    .line 105
    new-instance v0, Lcom/yelp/android/ui/util/h;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    .line 106
    new-instance v1, Lcom/yelp/android/ui/panels/PanelError;

    invoke-direct {v1, p1}, Lcom/yelp/android/ui/panels/PanelError;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/PanelError;->a()V

    .line 108
    invoke-virtual {v1, p0}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 109
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/h;->b(Landroid/view/View;)V

    .line 111
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public getButtonTextId()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/yelp/android/util/ErrorType;->mButtonTextId:I

    return v0
.end method

.method public getImageId()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/yelp/android/util/ErrorType;->mImageId:I

    return v0
.end method

.method public getImportance()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/yelp/android/util/ErrorType;->mImportance:I

    return v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/yelp/android/util/ErrorType;->mTextId:I

    return v0
.end method

.method public isMoreImportant(Lcom/yelp/android/util/ErrorType;)Z
    .locals 2

    .prologue
    .line 127
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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/yelp/android/util/ErrorType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    return-void
.end method
