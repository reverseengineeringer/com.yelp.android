.class public final Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;
.super Ljava/lang/Object;
.source "ActivityUserProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/yelp/android/serializable/Compliment;

.field public b:I

.field public c:Lcom/yelp/android/serializable/FriendRequest;

.field public d:I

.field public e:Lcom/yelp/android/serializable/Photo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Intent;)Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 459
    new-instance v1, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;-><init>()V

    .line 460
    const-string/jumbo v0, "user_compliments_count_delta"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->b:I

    .line 461
    const-string/jumbo v0, "dealt_with_compliment_request"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Compliment;

    iput-object v0, v1, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->a:Lcom/yelp/android/serializable/Compliment;

    .line 462
    const-string/jumbo v0, "user_friend_count_delta"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->d:I

    .line 463
    const-string/jumbo v0, "dealt_with_friend_request"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FriendRequest;

    iput-object v0, v1, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->c:Lcom/yelp/android/serializable/FriendRequest;

    .line 464
    const-string/jumbo v0, "user_photo"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    iput-object v0, v1, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->e:Lcom/yelp/android/serializable/Photo;

    .line 465
    return-object v1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 441
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const-string/jumbo v1, "dealt_with_compliment_request"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->a:Lcom/yelp/android/serializable/Compliment;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 444
    const-string/jumbo v1, "user_compliments_count_delta"

    iget v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 445
    const-string/jumbo v1, "user_friend_count_delta"

    iget v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 446
    const-string/jumbo v1, "dealt_with_friend_request"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->c:Lcom/yelp/android/serializable/FriendRequest;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 447
    const-string/jumbo v1, "user_photo"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->e:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 448
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 450
    return-void
.end method
