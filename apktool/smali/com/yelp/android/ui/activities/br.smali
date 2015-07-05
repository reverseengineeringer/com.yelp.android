.class Lcom/yelp/android/ui/activities/br;
.super Ljava/lang/Object;
.source "ActivityCreateAccount.java"

# interfaces
.implements Lcom/yelp/android/appdata/aa;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 1518
    iput-object p1, p0, Lcom/yelp/android/ui/activities/br;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;Z)V
    .locals 3

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/yelp/android/ui/activities/br;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    new-instance v1, Lcom/yelp/android/ui/activities/cc;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/br;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {v1, v2, p1}, Lcom/yelp/android/ui/activities/cc;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Landroid/location/Location;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Lcom/yelp/android/ui/activities/cc;)Lcom/yelp/android/ui/activities/cc;

    .line 1522
    iget-object v0, p0, Lcom/yelp/android/ui/activities/br;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->C(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/activities/cc;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/cc;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1523
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1527
    const/4 v0, 0x1

    return v0
.end method
