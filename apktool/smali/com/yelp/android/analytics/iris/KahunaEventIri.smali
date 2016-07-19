.class public final enum Lcom/yelp/android/analytics/iris/KahunaEventIri;
.super Ljava/lang/Enum;
.source "KahunaEventIri.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/analytics/iris/KahunaEventIri;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/analytics/iris/KahunaEventIri;

.field public static final enum Business:Lcom/yelp/android/analytics/iris/KahunaEventIri;

.field public static final enum BusinessPhoto:Lcom/yelp/android/analytics/iris/KahunaEventIri;

.field public static final enum BusinessPhotoSave:Lcom/yelp/android/analytics/iris/KahunaEventIri;

.field public static final enum FriendFinderSelectSources:Lcom/yelp/android/analytics/iris/KahunaEventIri;

.field public static final enum NotificationOpen:Lcom/yelp/android/analytics/iris/KahunaEventIri;

.field public static final enum OnboardingBegan:Lcom/yelp/android/analytics/iris/KahunaEventIri;

.field public static final enum OnboardingCompleted:Lcom/yelp/android/analytics/iris/KahunaEventIri;

.field public static final enum ReservationConfirm:Lcom/yelp/android/analytics/iris/KahunaEventIri;

.field public static final enum ReviewSaved:Lcom/yelp/android/analytics/iris/KahunaEventIri;

.field public static final enum Search:Lcom/yelp/android/analytics/iris/KahunaEventIri;

.field public static final enum SignedUp:Lcom/yelp/android/analytics/iris/KahunaEventIri;


# instance fields
.field private mEventName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    new-instance v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;

    const-string/jumbo v1, "Business"

    const-string/jumbo v2, "business"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/analytics/iris/KahunaEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;->Business:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    .line 5
    new-instance v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;

    const-string/jumbo v1, "BusinessPhoto"

    const-string/jumbo v2, "business/photo"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/analytics/iris/KahunaEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;->BusinessPhoto:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    .line 6
    new-instance v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;

    const-string/jumbo v1, "BusinessPhotoSave"

    const-string/jumbo v2, "business/photo/save"

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/analytics/iris/KahunaEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;->BusinessPhotoSave:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    .line 7
    new-instance v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;

    const-string/jumbo v1, "FriendFinderSelectSources"

    const-string/jumbo v2, "friend_finder/select_sources"

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/analytics/iris/KahunaEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;->FriendFinderSelectSources:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    .line 8
    new-instance v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;

    const-string/jumbo v1, "ReviewSaved"

    const-string/jumbo v2, "review/saved"

    invoke-direct {v0, v1, v8, v2}, Lcom/yelp/android/analytics/iris/KahunaEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;->ReviewSaved:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    .line 9
    new-instance v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;

    const-string/jumbo v1, "ReservationConfirm"

    const/4 v2, 0x5

    const-string/jumbo v3, "reservation/confirm"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/KahunaEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;->ReservationConfirm:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    .line 10
    new-instance v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;

    const-string/jumbo v1, "Search"

    const/4 v2, 0x6

    const-string/jumbo v3, "search"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/KahunaEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;->Search:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    .line 11
    new-instance v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;

    const-string/jumbo v1, "SignedUp"

    const/4 v2, 0x7

    const-string/jumbo v3, "signed_up"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/KahunaEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;->SignedUp:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    .line 12
    new-instance v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;

    const-string/jumbo v1, "NotificationOpen"

    const/16 v2, 0x8

    const-string/jumbo v3, "notification_open"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/KahunaEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;->NotificationOpen:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    .line 13
    new-instance v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;

    const-string/jumbo v1, "OnboardingBegan"

    const/16 v2, 0x9

    const-string/jumbo v3, "onboarding/began"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/KahunaEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;->OnboardingBegan:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    .line 14
    new-instance v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;

    const-string/jumbo v1, "OnboardingCompleted"

    const/16 v2, 0xa

    const-string/jumbo v3, "onboarding/completed"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/KahunaEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;->OnboardingCompleted:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    .line 3
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/yelp/android/analytics/iris/KahunaEventIri;

    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaEventIri;->Business:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaEventIri;->BusinessPhoto:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaEventIri;->BusinessPhotoSave:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaEventIri;->FriendFinderSelectSources:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaEventIri;->ReviewSaved:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/analytics/iris/KahunaEventIri;->ReservationConfirm:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/analytics/iris/KahunaEventIri;->Search:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/analytics/iris/KahunaEventIri;->SignedUp:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/analytics/iris/KahunaEventIri;->NotificationOpen:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/analytics/iris/KahunaEventIri;->OnboardingBegan:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yelp/android/analytics/iris/KahunaEventIri;->OnboardingCompleted:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;->$VALUES:[Lcom/yelp/android/analytics/iris/KahunaEventIri;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/yelp/android/analytics/iris/KahunaEventIri;->mEventName:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/analytics/iris/KahunaEventIri;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/analytics/iris/KahunaEventIri;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;->$VALUES:[Lcom/yelp/android/analytics/iris/KahunaEventIri;

    invoke-virtual {v0}, [Lcom/yelp/android/analytics/iris/KahunaEventIri;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/analytics/iris/KahunaEventIri;

    return-object v0
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/analytics/iris/KahunaEventIri;->mEventName:Ljava/lang/String;

    return-object v0
.end method
