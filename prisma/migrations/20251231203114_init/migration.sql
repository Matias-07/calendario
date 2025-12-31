-- CreateTable
CREATE TABLE "Task" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "title" TEXT NOT NULL,
    "notes" TEXT NOT NULL,
    "dueAt" DATETIME NOT NULL,
    "done" BOOLEAN NOT NULL DEFAULT false,
    "notifyAt" DATETIME NOT NULL,
    "notifiedAt" DATETIME NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL
);

-- CreateIndex
CREATE INDEX "Task_dueAt_idx" ON "Task"("dueAt");

-- CreateIndex
CREATE INDEX "Task_notifyAt_idx" ON "Task"("notifyAt");
