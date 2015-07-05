.class Lcom/yelp/android/ui/activities/drawer/k;
.super Ljava/lang/Object;
.source "DrawerFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/util/cu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/util/cu",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/yelp/android/ui/activities/drawer/k;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/k;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->f(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)Lcom/yelp/android/ui/activities/drawer/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/k;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->f(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)Lcom/yelp/android/ui/activities/drawer/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/activities/drawer/a;->a(I)V

    .line 369
    :cond_0
    return-void
.end method
