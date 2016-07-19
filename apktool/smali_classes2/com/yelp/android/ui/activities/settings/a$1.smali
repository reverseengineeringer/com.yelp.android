.class Lcom/yelp/android/ui/activities/settings/a$1;
.super Ljava/lang/Object;
.source "PreferenceScreenViewBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/settings/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/settings/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/settings/a;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/a$1;->a:Lcom/yelp/android/ui/activities/settings/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 263
    move-object v0, p1

    check-cast v0, Lcom/yelp/android/ui/activities/settings/PreferenceView;

    .line 267
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 268
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setChecked(Z)V

    .line 280
    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    .line 272
    check-cast v0, Lcom/yelp/android/ui/activities/settings/PreferenceView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/a$1;->a:Lcom/yelp/android/ui/activities/settings/a;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/settings/a;->a(Lcom/yelp/android/ui/activities/settings/a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 274
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/settings/PreferenceView;

    .line 275
    if-eq v0, p1, :cond_2

    .line 276
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setChecked(Z)V

    goto :goto_0
.end method
