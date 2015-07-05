.class Lcom/yelp/android/ui/activities/talk/y;
.super Ljava/lang/Object;
.source "TalkViewPost.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/y;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/y;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)V

    .line 108
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method
