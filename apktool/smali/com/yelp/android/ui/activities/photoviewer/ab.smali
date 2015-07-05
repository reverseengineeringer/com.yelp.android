.class Lcom/yelp/android/ui/activities/photoviewer/ab;
.super Ljava/lang/Object;
.source "PhotoChrome.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/Passport;

.field final synthetic b:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;Lcom/yelp/android/serializable/Passport;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/ab;->b:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/photoviewer/ab;->a:Lcom/yelp/android/serializable/Passport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ab;->b:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->b(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Lcom/yelp/android/ui/activities/photoviewer/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ab;->b:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->b(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Lcom/yelp/android/ui/activities/photoviewer/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ab;->a:Lcom/yelp/android/serializable/Passport;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Passport;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/ad;->a(Ljava/lang/String;)V

    .line 552
    :cond_0
    return-void
.end method
