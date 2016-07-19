.class Lcom/yelp/android/ui/activities/settings/a$2;
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
    .line 287
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/a$2;->a:Lcom/yelp/android/ui/activities/settings/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/a$2;->a:Lcom/yelp/android/ui/activities/settings/a;

    check-cast p1, Lcom/yelp/android/ui/activities/settings/PreferenceView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/activities/settings/a;->a(Lcom/yelp/android/ui/activities/settings/PreferenceView;Z)V

    .line 291
    return-void
.end method
