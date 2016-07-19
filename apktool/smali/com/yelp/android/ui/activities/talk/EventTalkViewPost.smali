.class public Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;
.super Lcom/yelp/android/ui/activities/talk/TalkViewPost;
.source "EventTalkViewPost.java"


# instance fields
.field private a:Lcom/yelp/android/serializable/Event;

.field private b:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
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

    .line 86
    new-instance v0, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost$1;-><init>(Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/Event;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    const-string/jumbo v1, "topic"

    invoke-static {p1}, Lcom/yelp/android/serializable/TalkTopic;->a(Lcom/yelp/android/serializable/Event;)Lcom/yelp/android/serializable/TalkTopic;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 33
    const-string/jumbo v1, "event"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 34
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;ILcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/bv/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/bv/c$b;",
            ">;)",
            "Lcom/yelp/android/bv/c;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/yelp/android/bv/a$a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;->a:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->I()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/yelp/android/bv/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/bv/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/bv/c$b;",
            ">;)",
            "Lcom/yelp/android/bv/c;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/yelp/android/bv/a$b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;->a:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->I()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/yelp/android/bv/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    return-object v0
.end method

.method protected a(Landroid/view/View;)V
    .locals 4

    .prologue
    const v3, 0x7f0200c2

    .line 56
    const v0, 0x7f0f04a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;->a:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1, p0}, Lcom/yelp/android/serializable/Event;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const v0, 0x7f0f0396

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/RoundedImageView;

    .line 60
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;->a:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->J()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 61
    invoke-static {p0}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;->a:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->J()Lcom/yelp/android/serializable/Photo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Photo;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/util/u$a;->b(I)Lcom/yelp/android/ui/util/u$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/widgets/RoundedImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Lcom/yelp/android/bv/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;->a:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->I()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1, p1, v2}, Lcom/yelp/android/bv/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 82
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/core/b;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 83
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 84
    return-void
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f030166

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;->a:Lcom/yelp/android/serializable/Event;

    .line 46
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->onCreate(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method
