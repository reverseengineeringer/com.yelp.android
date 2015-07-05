.class Lcom/yelp/android/ui/activities/profile/m;
.super Ljava/lang/Object;
.source "MoreAboutUser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/ImageInputHelper;

.field final synthetic b:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;Lcom/yelp/android/ui/util/ImageInputHelper;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/m;->b:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/profile/m;->a:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 208
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->UserImageUpload:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 209
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/m;->a:Lcom/yelp/android/ui/util/ImageInputHelper;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/m;->b:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/app/Activity;)V

    .line 210
    return-void
.end method
