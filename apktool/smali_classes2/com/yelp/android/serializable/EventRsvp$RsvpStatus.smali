.class public final enum Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;
.super Ljava/lang/Enum;
.source "EventRsvp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/EventRsvp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RsvpStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

.field public static final enum Full:Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

.field public static final enum Locked:Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

.field public static final enum NotYetOpen:Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

.field public static final enum Open:Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

.field public static final enum Waitlist:Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;


# instance fields
.field private final mEventStatus:Ljava/lang/String;

.field private final mRsvpButtonResId:I

.field private final mRsvpTitleResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    const-string/jumbo v1, "Full"

    const-string/jumbo v3, "full"

    const v4, 0x7f0705d5

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->Full:Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    .line 18
    new-instance v3, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    const-string/jumbo v4, "NotYetOpen"

    const-string/jumbo v6, "not_yet_open"

    const v7, 0x7f0705cb

    move v5, v9

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->NotYetOpen:Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    .line 19
    new-instance v3, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    const-string/jumbo v4, "Open"

    const-string/jumbo v6, "open"

    const v7, 0x7f0702ae

    const v8, 0x7f070512

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->Open:Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    .line 20
    new-instance v3, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    const-string/jumbo v4, "Waitlist"

    const-string/jumbo v6, "waitlist"

    const v7, 0x7f0702ae

    const v8, 0x7f07030b

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->Waitlist:Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    .line 21
    new-instance v3, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    const-string/jumbo v4, "Locked"

    const-string/jumbo v6, "locked"

    move v5, v12

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->Locked:Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    sget-object v1, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->Full:Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->NotYetOpen:Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->Open:Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->Waitlist:Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->Locked:Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    aput-object v1, v0, v12

    sput-object v0, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->$VALUES:[Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->mEventStatus:Ljava/lang/String;

    .line 30
    iput p4, p0, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->mRsvpTitleResId:I

    .line 31
    iput p5, p0, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->mRsvpButtonResId:I

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->mEventStatus:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->$VALUES:[Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    return-object v0
.end method


# virtual methods
.method public canUserRSVP()Z
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->Open:Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->Waitlist:Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRsvpButtonText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    iget v0, p0, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->mRsvpButtonResId:I

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->mRsvpButtonResId:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRsvpTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    iget v0, p0, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->mRsvpTitleResId:I

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->mRsvpTitleResId:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
