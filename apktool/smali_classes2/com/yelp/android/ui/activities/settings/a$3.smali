.class Lcom/yelp/android/ui/activities/settings/a$3;
.super Lcom/yelp/android/ui/util/av$a;
.source "PreferenceScreenViewBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/settings/a;->a(Lcom/yelp/android/ui/activities/settings/PreferenceView;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/settings/PreferenceView;

.field final synthetic b:Lcom/yelp/android/ui/activities/settings/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/settings/a;Lcom/yelp/android/ui/activities/settings/PreferenceView;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/a$3;->b:Lcom/yelp/android/ui/activities/settings/a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/settings/a$3;->a:Lcom/yelp/android/ui/activities/settings/PreferenceView;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/av$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 321
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/a$3;->b:Lcom/yelp/android/ui/activities/settings/a;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/a$3;->b:Lcom/yelp/android/ui/activities/settings/a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/settings/a;->b(Lcom/yelp/android/ui/activities/settings/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/settings/a$3;->a:Lcom/yelp/android/ui/activities/settings/PreferenceView;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PreferenceSection;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/settings/a;->a(Lcom/yelp/android/ui/activities/settings/a;Lcom/yelp/android/serializable/PreferenceSection;)V

    .line 323
    return-void
.end method
