.class Lcom/yelp/android/ui/activities/photoviewer/z;
.super Ljava/lang/Object;
.source "PhotoChrome.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/z;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 336
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v1

    if-nez v1, :cond_2

    .line 338
    if-eqz p2, :cond_0

    .line 340
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    const v0, 0x7f070638

    .line 345
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/z;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->b(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Lcom/yelp/android/ui/activities/photoviewer/ad;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/photoviewer/ad;->a(I)V

    .line 350
    :cond_0
    :goto_1
    return-void

    .line 343
    :cond_1
    const v0, 0x7f07035c

    goto :goto_0

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/z;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->setLikeButtonChecked(Z)V

    goto :goto_1
.end method
