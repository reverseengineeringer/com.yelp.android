.class final enum Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField$1;
.super Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;-><init>(Ljava/lang/String;IILcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$1;)V

    return-void
.end method


# virtual methods
.method public isValid(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)Z
    .locals 1

    .prologue
    .line 77
    invoke-static {p1}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->a(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)Lcom/yelp/android/ui/widgets/RecipientBoxView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->getRecipient()Lcom/yelp/android/serializable/User;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
