.class Lcom/yelp/android/ui/activities/ActivityCreateAccount$20;
.super Ljava/lang/Object;
.source "ActivityCreateAccount.java"

# interfaces
.implements Lcom/yelp/android/appdata/LocationService$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityCreateAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 1862
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$20;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;Z)V
    .locals 3

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$20;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    new-instance v1, Lcom/yelp/android/ui/activities/ActivityCreateAccount$b;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$20;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {v1, v2, p1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$b;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Landroid/location/Location;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Lcom/yelp/android/ui/activities/ActivityCreateAccount$b;)Lcom/yelp/android/ui/activities/ActivityCreateAccount$b;

    .line 1866
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$20;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->B(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/activities/ActivityCreateAccount$b;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1867
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1871
    const/4 v0, 0x1

    return v0
.end method
