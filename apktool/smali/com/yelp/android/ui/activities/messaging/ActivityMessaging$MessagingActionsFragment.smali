.class public Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;
.super Landroid/support/v4/app/Fragment;
.source "ActivityMessaging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessagingActionsFragment"
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/messaging/apimanagers/h;

.field private b:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 414
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/Conversation;Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/h;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/h;->a(Lcom/yelp/android/serializable/Conversation;Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V

    .line 444
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Conversation;Ljava/lang/String;Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/messaging/apimanagers/h;->a(Lcom/yelp/android/serializable/Conversation;Ljava/lang/String;Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V

    .line 439
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/e;ZLcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/messaging/apimanagers/h;->a(Lcom/yelp/android/serializable/e;ZLcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V

    .line 451
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/h;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/h;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V

    .line 431
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/a;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V

    .line 432
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/h;->g()Z

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

.method public b(Lcom/yelp/android/serializable/Conversation;Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;

    invoke-virtual {v0, p2, p1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/a;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;Lcom/yelp/android/serializable/Conversation;)V

    .line 470
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/Conversation;Ljava/lang/String;Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;

    invoke-virtual {v0, p3, p1, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/a;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;Lcom/yelp/android/serializable/Conversation;Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/e;ZLcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/messaging/apimanagers/h;->b(Lcom/yelp/android/serializable/e;ZLcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V

    .line 458
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 421
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 422
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->setRetainInstance(Z)V

    .line 423
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/h;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/h;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/h;

    .line 424
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/a;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/a;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;

    .line 425
    return-void
.end method
