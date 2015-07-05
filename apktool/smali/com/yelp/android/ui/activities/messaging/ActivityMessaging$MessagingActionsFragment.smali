.class public Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;
.super Landroid/support/v4/app/Fragment;
.source "ActivityMessaging.java"


# instance fields
.field private a:Lcom/yelp/android/ui/activities/messaging/apimanagers/q;

.field private b:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/Conversation;Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/q;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/q;->a(Lcom/yelp/android/serializable/Conversation;Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V

    .line 433
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Conversation;Ljava/lang/String;Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/q;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/messaging/apimanagers/q;->a(Lcom/yelp/android/serializable/Conversation;Ljava/lang/String;Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V

    .line 428
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/bg;ZLcom/yelp/android/ui/activities/messaging/apimanagers/p;)V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/q;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/messaging/apimanagers/q;->a(Lcom/yelp/android/serializable/bg;ZLcom/yelp/android/ui/activities/messaging/apimanagers/p;)V

    .line 438
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/messaging/apimanagers/p;Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/q;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/q;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V

    .line 422
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/a;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V

    .line 423
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/q;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/q;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/yelp/android/serializable/Conversation;Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;

    invoke-virtual {v0, p2, p1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/a;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/p;Lcom/yelp/android/serializable/Conversation;)V

    .line 453
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/Conversation;Ljava/lang/String;Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;

    invoke-virtual {v0, p3, p1, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/a;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/p;Lcom/yelp/android/serializable/Conversation;Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/bg;ZLcom/yelp/android/ui/activities/messaging/apimanagers/p;)V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/q;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/messaging/apimanagers/q;->b(Lcom/yelp/android/serializable/bg;ZLcom/yelp/android/ui/activities/messaging/apimanagers/p;)V

    .line 443
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 413
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 414
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->setRetainInstance(Z)V

    .line 415
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/q;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/q;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/q;

    .line 416
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/a;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/a;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;

    .line 417
    return-void
.end method
