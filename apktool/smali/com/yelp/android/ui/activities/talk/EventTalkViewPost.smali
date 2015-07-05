.class public Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;
.super Lcom/yelp/android/ui/activities/talk/TalkViewPost;
.source "EventTalkViewPost.java"


# instance fields
.field private a:Lcom/yelp/android/serializable/Event;

.field private b:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;-><init>()V

    .line 87
    new-instance v0, Lcom/yelp/android/ui/activities/talk/n;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/talk/n;-><init>(Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;->b:Lcom/yelp/android/appdata/webrequests/m;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/Event;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    const-string/jumbo v1, "extra.topic"

    invoke-static {p1}, Lcom/yelp/android/serializable/TalkTopic;->fromEvent(Lcom/yelp/android/serializable/Event;)Lcom/yelp/android/serializable/TalkTopic;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 34
    const-string/jumbo v1, "extra.event"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 35
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;ILcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/aw/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/aw/h;",
            ">;)",
            "Lcom/yelp/android/aw/f;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/yelp/android/aw/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;->a:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/yelp/android/aw/c;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/yelp/android/appdata/webrequests/m;)V

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/aw/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/aw/h;",
            ">;)",
            "Lcom/yelp/android/aw/f;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lcom/yelp/android/aw/d;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;->a:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/yelp/android/aw/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    return-object v0
.end method

.method protected a(Landroid/view/View;)V
    .locals 4

    .prologue
    const v3, 0x7f020097

    .line 57
    const v0, 0x7f0c03bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;->a:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1, p0}, Lcom/yelp/android/serializable/Event;->getFormattedTimeRange(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const v0, 0x7f0c0311

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/RoundedImageView;

    .line 61
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;->a:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    invoke-static {p0}, Lcom/bumptech/glide/h;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/j;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;->a:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Photo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/d;->b(I)Lcom/bumptech/glide/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/yelp/android/ag/j;

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/widgets/RoundedImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Lcom/yelp/android/aw/e;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;->a:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;->b:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, v1, p1, v2}, Lcom/yelp/android/aw/e;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 83
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/av/g;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 84
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 85
    return-void
.end method

.method protected c()I
    .locals 1

    .prologue
    .line 52
    const v0, 0x7f030106

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;->a:Lcom/yelp/android/serializable/Event;

    .line 47
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->onCreate(Landroid/os/Bundle;)V

    .line 48
    return-void
.end method
