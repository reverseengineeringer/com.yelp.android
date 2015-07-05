.class public final enum Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;
.super Ljava/lang/Enum;
.source "EventRequestFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

.field public static final enum EVENT_ATTENDEES_REQUEST:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

.field public static final enum EVENT_CANCEL_RSVP:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

.field public static final enum EVENT_DISABLE_REMINDER_REQUEST:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

.field public static final enum EVENT_ENABLE_REMINDER_REQUEST:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

.field public static final enum EVENT_FLAG_REQUEST:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

.field public static final enum EVENT_RECORD_RSVP:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

.field public static final enum EVENT_REQUEST:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

.field public static final enum EVENT_SUBSCRIPTION_REQUEST:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

.field public static final enum EVENT_UPDATE_GUESTS:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    const-string/jumbo v1, "EVENT_REQUEST"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->EVENT_REQUEST:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    .line 42
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    const-string/jumbo v1, "EVENT_ATTENDEES_REQUEST"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->EVENT_ATTENDEES_REQUEST:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    .line 43
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    const-string/jumbo v1, "EVENT_SUBSCRIPTION_REQUEST"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->EVENT_SUBSCRIPTION_REQUEST:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    .line 44
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    const-string/jumbo v1, "EVENT_ENABLE_REMINDER_REQUEST"

    invoke-direct {v0, v1, v6}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->EVENT_ENABLE_REMINDER_REQUEST:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    .line 45
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    const-string/jumbo v1, "EVENT_DISABLE_REMINDER_REQUEST"

    invoke-direct {v0, v1, v7}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->EVENT_DISABLE_REMINDER_REQUEST:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    .line 46
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    const-string/jumbo v1, "EVENT_FLAG_REQUEST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->EVENT_FLAG_REQUEST:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    .line 47
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    const-string/jumbo v1, "EVENT_RECORD_RSVP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->EVENT_RECORD_RSVP:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    .line 48
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    const-string/jumbo v1, "EVENT_CANCEL_RSVP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->EVENT_CANCEL_RSVP:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    .line 49
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    const-string/jumbo v1, "EVENT_UPDATE_GUESTS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->EVENT_UPDATE_GUESTS:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    sget-object v1, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->EVENT_REQUEST:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->EVENT_ATTENDEES_REQUEST:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->EVENT_SUBSCRIPTION_REQUEST:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->EVENT_ENABLE_REMINDER_REQUEST:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->EVENT_DISABLE_REMINDER_REQUEST:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->EVENT_FLAG_REQUEST:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->EVENT_RECORD_RSVP:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->EVENT_CANCEL_RSVP:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->EVENT_UPDATE_GUESTS:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->$VALUES:[Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->$VALUES:[Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    return-object v0
.end method
