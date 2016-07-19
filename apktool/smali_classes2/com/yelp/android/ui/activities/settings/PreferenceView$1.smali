.class Lcom/yelp/android/ui/activities/settings/PreferenceView$1;
.super Ljava/lang/Object;
.source "PreferenceView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/settings/PreferenceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/settings/PreferenceView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView$1;->a:Lcom/yelp/android/ui/activities/settings/PreferenceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView$1;->a:Lcom/yelp/android/ui/activities/settings/PreferenceView;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    .line 273
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 275
    :cond_0
    return-void
.end method
