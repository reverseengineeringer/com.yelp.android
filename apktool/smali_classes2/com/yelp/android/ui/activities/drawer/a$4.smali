.class Lcom/yelp/android/ui/activities/drawer/a$4;
.super Ljava/lang/Object;
.source "DinoAnimationController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/drawer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/drawer/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/drawer/a;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/yelp/android/ui/activities/drawer/a$4;->a:Lcom/yelp/android/ui/activities/drawer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a$4;->a:Lcom/yelp/android/ui/activities/drawer/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/drawer/a;->a(Lcom/yelp/android/ui/activities/drawer/a;I)V

    .line 375
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->DinoBackToTop:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 376
    return-void
.end method
