.class public final enum Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;
.super Ljava/lang/Enum;
.source "SingleCurrentUserFeedEntryFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;

.field public static final enum Review:Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;

    const-string/jumbo v1, "Review"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;->Review:Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;

    sget-object v1, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;->Review:Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;->$VALUES:[Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;->$VALUES:[Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;

    return-object v0
.end method
