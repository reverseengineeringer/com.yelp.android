.class Lcom/yelp/android/ui/activities/settings/ai;
.super Ljava/lang/Object;
.source "PreferenceScreenFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/ai;->b:Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/settings/ai;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ai;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/settings/PreferenceView;

    .line 214
    iget-object v2, p0, Lcom/yelp/android/ui/activities/settings/ai;->b:Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->b(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V

    goto :goto_0

    .line 216
    :cond_0
    return-void
.end method
