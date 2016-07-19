.class public Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$a;
.super Ljava/lang/Object;
.source "PreferenceScreenFragment.java"

# interfaces
.implements Lcom/yelp/android/cj/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setVisibility(I)V

    .line 409
    return-void
.end method
