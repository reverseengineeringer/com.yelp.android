.class public Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityMessaging.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/messaging/a;
.implements Lcom/yelp/android/ui/p;
.implements Lcom/yelp/android/ui/panels/aa;


# instance fields
.field private a:Lcom/yelp/android/serializable/Conversation;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

.field private e:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

.field private f:Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 406
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    const v1, 0x7f070641

    const v2, 0x7f07035a

    invoke-static {p0, v1, v2, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->g:Z

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->a:Lcom/yelp/android/serializable/Conversation;

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->a:Lcom/yelp/android/serializable/Conversation;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a(Lcom/yelp/android/serializable/Conversation;)Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->e:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    .line 259
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 260
    const v0, 0x7f0c01d4

    .line 264
    :goto_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 265
    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->e:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    const-string/jumbo v3, "conversation_thread_tag"

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 271
    if-eqz p1, :cond_1

    .line 272
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 274
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 275
    :cond_2
    return-void

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->c:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->h:Z

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a(Ljava/lang/String;Z)Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->e:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    goto :goto_0

    .line 262
    :cond_4
    const v0, 0x7f0c016c

    goto :goto_1
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 186
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "conversations_inbox_tag"

    aput-object v0, v2, v1

    const/4 v0, 0x1

    const-string/jumbo v3, "conversation_thread_tag"

    aput-object v3, v2, v0

    .line 189
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    move v0, v1

    .line 193
    :goto_0
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 194
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_0
    array-length v0, v2

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v4, v2, v1

    .line 198
    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 199
    if-eqz v4, :cond_1

    .line 200
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 197
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 204
    :cond_2
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 205
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 210
    const v0, 0x7f0c01d4

    .line 217
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->a:Lcom/yelp/android/serializable/Conversation;

    if-eqz v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->a:Lcom/yelp/android/serializable/Conversation;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a(Ljava/util/ArrayList;Lcom/yelp/android/serializable/Conversation;)Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->d:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    .line 224
    :goto_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->d:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    const-string/jumbo v3, "conversations_inbox_tag"

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 228
    return-void

    .line 212
    :cond_0
    const v0, 0x7f0c016b

    goto :goto_0

    .line 221
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->d:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    goto :goto_1
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->d:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->d:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->e:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->e:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/Conversation;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 342
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->g:Z

    .line 343
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->a:Lcom/yelp/android/serializable/Conversation;

    .line 344
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_0

    .line 346
    :goto_0
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->a(Z)V

    .line 347
    return-void

    :cond_0
    move v0, v1

    .line 344
    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/bg;)V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->d:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->d:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a(Lcom/yelp/android/serializable/bg;)V

    .line 369
    :cond_0
    return-void
.end method

.method public a_()V
    .locals 1

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->d:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a_()V

    .line 291
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->e:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->b()V

    .line 294
    :cond_1
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/Conversation;)V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->d:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->d:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b(Lcom/yelp/android/serializable/Conversation;)V

    .line 354
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->d:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g()V

    .line 379
    :cond_0
    return-void
.end method

.method public c(Lcom/yelp/android/serializable/Conversation;)V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->d:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->d:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a(Lcom/yelp/android/serializable/Conversation;)V

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 362
    return-void
.end method

.method public d()Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->f:Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    return-object v0
.end method

.method public getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;
    .locals 1

    .prologue
    .line 301
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public m_()V
    .locals 1

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->d:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->f()V

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->e:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 63
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v3, "user_actions_tag"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->f:Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->f:Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->f:Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    .line 69
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->f:Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    const-string/jumbo v4, "user_actions_tag"

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 76
    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->setContentView(I)V

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "show_keyboard"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->h:Z

    .line 80
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->wasLaunchedFromPushNotification()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->g:Z

    .line 81
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 82
    iget-boolean v3, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->g:Z

    if-eqz v3, :cond_2

    .line 83
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v3

    new-instance v4, Lcom/yelp/android/analytics/o;

    invoke-direct {v4, v0}, Lcom/yelp/android/analytics/o;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 85
    :cond_2
    if-eqz p1, :cond_5

    .line 86
    const-string/jumbo v0, "conversation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Conversation;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->a:Lcom/yelp/android/serializable/Conversation;

    .line 87
    const-string/jumbo v0, "conversations"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->b:Ljava/util/ArrayList;

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->a:Lcom/yelp/android/serializable/Conversation;

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->a:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->c:Ljava/lang/String;

    .line 98
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->e()V

    .line 106
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v0

    if-nez v0, :cond_6

    .line 108
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 109
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->startActivity(Landroid/content/Intent;)V

    .line 110
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->finish()V

    .line 133
    :cond_4
    :goto_1
    return-void

    .line 93
    :cond_5
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "conversation_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->c:Ljava/lang/String;

    goto :goto_0

    .line 117
    :cond_6
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->g:Z

    if-nez v0, :cond_8

    .line 119
    :cond_7
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->f()V

    .line 126
    :cond_8
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_4

    if-nez p1, :cond_9

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->g:Z

    if-eqz v0, :cond_4

    .line 131
    :cond_9
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->g:Z

    if-nez v0, :cond_a

    move v0, v1

    :goto_2
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->a(Z)V

    goto :goto_1

    :cond_a
    move v0, v2

    goto :goto_2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 137
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 140
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->g:Z

    .line 141
    const-string/jumbo v2, "show_keyboard"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->h:Z

    .line 142
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->a:Lcom/yelp/android/serializable/Conversation;

    .line 143
    const-string/jumbo v2, "conversation_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->c:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 145
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->d:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    if-eqz v3, :cond_1

    if-ne v2, v1, :cond_1

    :cond_0
    move v0, v1

    .line 147
    :cond_1
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->a(Z)V

    .line 148
    const/4 v0, 0x2

    if-ne v2, v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->d:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a(Ljava/lang/String;)V

    .line 151
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 156
    const/4 v0, 0x0

    .line 157
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->e:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->d()Lcom/yelp/android/serializable/Conversation;

    move-result-object v0

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->d:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->e()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 161
    const-string/jumbo v2, "conversations"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 167
    :cond_0
    :goto_0
    const-string/jumbo v1, "conversation"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 168
    return-void

    .line 162
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->d:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->d()Lcom/yelp/android/serializable/Conversation;

    move-result-object v0

    goto :goto_0

    .line 164
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->e:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->d()Lcom/yelp/android/serializable/Conversation;

    move-result-object v0

    goto :goto_0
.end method

.method public populateError(Lcom/yelp/android/util/ErrorType;)V
    .locals 2

    .prologue
    .line 279
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 280
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_CONVERSATIONS:Lcom/yelp/android/util/ErrorType;

    if-ne p1, v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelError;->b()V

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setBackgroundResource(I)V

    .line 284
    return-void
.end method

.method protected updateHotButtonVisibility()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->updateHotButtonVisibility()V

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->setHotButtonKeyboardListener(Lcom/yelp/android/ui/view/a;)V

    .line 177
    return-void
.end method
