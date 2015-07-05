.class final enum Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField$2;
.super Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;
.source "ComposeMessageFragment.java"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;-><init>(Ljava/lang/String;IILcom/yelp/android/ui/activities/messaging/b;)V

    return-void
.end method


# virtual methods
.method public isValid(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)Z
    .locals 1

    .prologue
    .line 81
    invoke-static {p1}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
