.class Lcom/yelp/android/ui/activities/messaging/b$1;
.super Ljava/lang/Object;
.source "SuggestedBusinessAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/messaging/b;->a(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/yelp/android/ui/activities/messaging/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/b$1;->b:Lcom/yelp/android/ui/activities/messaging/b;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/messaging/b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 74
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/b$1;->b:Lcom/yelp/android/ui/activities/messaging/b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/b;->a(Lcom/yelp/android/ui/activities/messaging/b;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/b$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/b$1;->b:Lcom/yelp/android/ui/activities/messaging/b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/b;->a(Lcom/yelp/android/ui/activities/messaging/b;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/b$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMessageTheBusinessMultibizSelect:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    if-nez p2, :cond_0

    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/b$1;->b:Lcom/yelp/android/ui/activities/messaging/b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/b;->a(Lcom/yelp/android/ui/activities/messaging/b;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/b$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
